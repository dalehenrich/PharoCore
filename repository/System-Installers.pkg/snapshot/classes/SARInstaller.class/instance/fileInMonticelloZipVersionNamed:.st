
!SARInstaller methodsFor: 'client services'!
fileInMonticelloZipVersionNamed: memberName
	"This is to be used from preamble/postscript code to file in zip 
	members as Monticello version (.mcz) files."

	| member mczInstaller newCS mcMczReader |
	mcMczReader := Smalltalk globals at: #MCMczReader ifAbsent: [  ].
	mczInstaller := Smalltalk globals at: #MczInstaller ifAbsent: [  ].
	member := self memberNamed: memberName.
	member ifNil: [ ^ self errorNoSuchMember: memberName ].
	self class
		withCurrentChangeSetNamed: member localFileName
		do: [ :cs | 
			newCS := cs.
			(mcMczReader versionFromStream: member contentStream) load ].
	newCS isEmpty
		ifTrue: [ ChangeSet removeChangeSet: newCS ].
	World doOneCycle.
	self installed: member! !
