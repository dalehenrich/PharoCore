
!MessageSet methodsFor: 'private'!
initializeMessageList: anArray
	"Initialize my messageList from the given list of MethodReference or string objects."

	
	messageList := anArray asOrderedCollection.
	messageListIndex := messageList isEmpty ifTrue: [0] ifFalse: [1].
	contents := ''! !
