
!MessageSet methodsFor: 'message functions'!
reformulateList
	"The receiver's messageList has been changed; rebuild it"

	super reformulateList.
	self initializeMessageList: messageList.
	self changed: #messageList.
	self changed: #messageListIndex.
	self contentsChanged
! !
