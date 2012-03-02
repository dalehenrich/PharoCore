
!FlatMessageListBrowser methodsFor: 'text'!
displayIfInfo: aMethodReference

	^ 'Last modification : 
		', (aMethodReference timeStamp asDateAndTime asTimeStamp asString)
! !
