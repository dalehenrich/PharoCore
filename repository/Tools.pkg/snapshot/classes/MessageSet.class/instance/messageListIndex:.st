
!MessageSet methodsFor: 'message list'!
messageListIndex: anInteger 
	"Set the index of the selected item to be anInteger."

	messageListIndex := anInteger.
	contents := 
		messageListIndex ~= 0
			ifTrue: [self selectedMessage]
			ifFalse: [''].
	self changed: #messageListIndex.	 "update my selection"
	self editSelection: #editMessage.
	self changed: #annotation.
	self contentsChanged.
	(messageListIndex ~= 0 and: [autoSelectString notNil])
		ifTrue: [self changed: #autoSelect].
	self decorateButtons
! !
