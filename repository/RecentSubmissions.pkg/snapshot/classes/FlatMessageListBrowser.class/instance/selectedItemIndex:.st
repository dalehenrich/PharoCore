
!FlatMessageListBrowser methodsFor: 'accessing'!
selectedItemIndex: anInteger

	self okToChange ifFalse: [ ^ self ].
	selectedItem := self getList at: anInteger ifAbsent: [ nil ].
	self changed: #selectedItemIndex.
	self changed: #textToDisplay.
	self updateTextArea! !
