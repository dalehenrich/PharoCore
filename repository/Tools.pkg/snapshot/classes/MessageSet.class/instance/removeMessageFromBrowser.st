
!MessageSet methodsFor: 'message functions'!
removeMessageFromBrowser
	"Remove the selected message from the browser."

	messageListIndex = 0 ifTrue: [^ self].
	self deleteFromMessageList: self selection.
	self reformulateList.
	self adjustWindowTitleAfterFiltering
! !
