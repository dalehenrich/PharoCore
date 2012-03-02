
!MessageListBrowser methodsFor: 'text'!
displayIfInfo: aMessageListInspectableNode

	^ 'Last modification : 
		', (aMessageListInspectableNode item timeStamp asDateAndTime asTimeStamp asString)
! !
