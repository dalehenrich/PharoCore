
!MessageSet methodsFor: 'contents'!
contents
	"Answer the contents of the receiver"

	^ contents == nil
		ifTrue: [currentCompiledMethod := nil. '']
		ifFalse: [messageListIndex = 0 
			ifTrue: [currentCompiledMethod := nil. contents]
			ifFalse: [self showingByteCodes
				ifTrue: [self selectedBytecodes]
				ifFalse: [self selectedMessage]]]! !
