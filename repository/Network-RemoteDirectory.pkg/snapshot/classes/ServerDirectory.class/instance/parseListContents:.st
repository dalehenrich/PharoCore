
!ServerDirectory methodsFor: 'updates'!
parseListContents: listContents 
	"Parse the contents of updates.list into {{vers. {fileNames*}}*}, and return it."
	| sections vers strm line fileNames |
	sections := OrderedCollection new.
	fileNames := OrderedCollection new: 1000.
	vers := nil.
	strm := listContents readStream.
	[ strm atEnd ] whileFalse: 
		[ line := strm nextLine.
		line size > 0 ifTrue: 
			[ line first = $# 
				ifTrue: 
					[ vers ifNotNil: [ sections addLast: {  vers. (fileNames asArray)  } ].
					"Start a new section"
					vers := line allButFirst.
					fileNames resetTo: 1 ]
				ifFalse: [ line first = $* ifFalse: [ fileNames addLast: line ] ] ] ].
	vers ifNotNil: [ sections addLast: {  vers. (fileNames asArray)  } ].
	^ sections asArray
	" TEST:
 | list |
list := Utilities parseListContents: (FileStream oldFileNamed: 'updates.list') contentsOfEntireFile.
list = (Utilities parseListContents: (String streamContents: [:s | Utilities writeList: list toStream: s]))
	ifFalse: [self error: 'test failed']
	ifTrue: [self inform: 'test OK']
"! !
