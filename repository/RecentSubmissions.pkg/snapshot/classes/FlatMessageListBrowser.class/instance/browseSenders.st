
!FlatMessageListBrowser methodsFor: 'private'!
browseSenders
	
	selectedItem ifNil: [ ^ false ].
	self browseSendersOfMessagesFrom: selectedItem selector! !
