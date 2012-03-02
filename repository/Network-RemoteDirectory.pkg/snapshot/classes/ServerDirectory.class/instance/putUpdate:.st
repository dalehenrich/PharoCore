
!ServerDirectory methodsFor: 'updates'!
putUpdate: fileStrm 
	"Put this file out as an Update on the servers of my group.  Each version of the system may have its own set of update files, or they may all share the same files.  'updates.list' holds the master list.  Each update is a fileIn whose name begins with a number.  See Utilities class readServerUpdatesThrough:saveLocally:updateImage:.
	When two sets of updates are stored on the same directory, one of them has a * in its 
serverUrls description.  When that is true, the first word of the description is put on
the front of 'updates.list', and that index file is used."
	| myServers updateStrm newName response localName seq indexPrefix listContents version versIndex lastNum stripped |
	localName := fileStrm localName.
	fileStrm size = 0 ifTrue: [ ^ self inform: 'That file has zero bytes!!  May have a new name.' ].
	(fileStrm contentsOfEntireFile includes: Character linefeed) ifTrue: 
		[ (self confirm: 'That file contains linefeeds.  Proceed if...
you know that this is okay (e.g. the file contains raw binary data).') ifFalse: [^ nil] ].
	fileStrm reset.
	(self checkNames: {  localName  }) ifFalse: [ ^ nil ].	"illegal characters"
	response := UIManager default 
		chooseFrom: #('Install update' 'Cancel update' )
		title: 'Do you really want to broadcast the file ' , localName , '\to every Squeak user who updates from ' withCRs , self groupName , '?'.
	response = 1 ifFalse: [ ^ nil ].	"abort"
	self openGroup.
	indexPrefix := (self groupName includes: $*) 
		ifTrue: 
			[ (self groupName findTokens: ' ') first	"special for internal updates" ]
		ifFalse: [ '' ].	"normal"
	myServers := self 
		checkServersWithPrefix: indexPrefix
		andParseListInto: [ :x | listContents := x ].
	myServers size = 0 ifTrue: 
		[ self closeGroup.
		^ self ].
	version := SystemVersion current version.
	versIndex := (listContents collect: [ :pair | pair first ]) indexOf: version.
	versIndex = 0 ifTrue: 
		[ self inform: 'There is no section in updates.list for your version'.
		self closeGroup.
		^ nil ].	"abort"

	"A few affirmations..."
	versIndex < listContents size ifTrue: 
		[ (self confirm: 'This system, ' , version , ' is not the latest version.\Make update for an older version?' withCRs) ifFalse: 
			[ self closeGroup.
			^ nil ] ].	"abort"
	(listContents at: versIndex) last isEmpty ifTrue: 
		[ (self confirm: 'Please confirm that you mean to issue the first update for ' , version , '\(otherwise something is wrong).' withCRs) ifFalse: 
			[ self closeGroup.
			^ nil ] ].

	"We now determine next update number to be max of entire index"
	lastNum := listContents 
		inject: 0
		into: 
			[ :max :pair | 
			pair last isEmpty 
				ifTrue: [ max ]
				ifFalse: [ max max: pair last last initialIntegerOrNil ] ].

	"Save old copy of updates.list on local disk"
	FileDirectory default deleteFileNamed: indexPrefix , 'updates.list.bk'.
	UpdateStreamer new 
		writeList: listContents
		toStream: (FileStream fileNamed: indexPrefix , 'updates.list.bk').

	"append name to updates with new sequence number"
	seq := (lastNum + 1) printString 
		padded: #left
		to: 4
		with: $0.
	"strip off any old seq number"
	stripped := localName 
		copyFrom: (localName findFirst: [ :c | c isDigit not ])
		to: localName size.
	newName := seq , stripped.
	listContents 
		at: versIndex
		put: { 
				version.
				((listContents at: versIndex) last copyWith: newName)
			 }.

	"Write a new copy on all servers..."
	updateStrm := (String streamContents: 
		[ :s | 
		UpdateStreamer new 
			writeList: listContents
			toStream: s ]) readStream.
	myServers do: 
		[ :aServer | 
		fileStrm reset.	"reopen"
		aServer 
			putFile: fileStrm
			named: newName
			retry: true.
		updateStrm reset.
		aServer 
			putFile: updateStrm
			named: indexPrefix , 'updates.list'
			retry: true.
		Transcript
			show: 'Update succeeded on server ' , aServer moniker;
			cr ].
	self closeGroup.
	Transcript
		cr;
		show: 'Be sure to test your new update!!';
		cr.
	"rename the file locally (may fail)"
	fileStrm directory 
		rename: localName
		toBe: newName! !
