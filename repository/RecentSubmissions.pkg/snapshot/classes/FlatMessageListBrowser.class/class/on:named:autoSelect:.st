
!FlatMessageListBrowser class methodsFor: 'instance creation'!
on: aMessageList named: aString autoSelect: aSelector

	^self new 
		model: aMessageList;
		title: aString;
		searchedString: aSelector! !
