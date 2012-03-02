
!FlatMessageListBrowser methodsFor: 'text'!
textToDisplay
	
	selectedItem isNil 
		ifFalse: [ ^self displayInformationFrom: selectedItem ].
	^nil! !
