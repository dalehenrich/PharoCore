
!MessageSet methodsFor: 'message functions'!
deleteFromMessageList: aMessage
	"Delete the given message from the receiver's message list"

	messageList := messageList copyWithout: aMessage! !
