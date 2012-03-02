
!FlatMessageListBrowser methodsFor: 'items addition'!
addTextArea: aWindow

	aWindow 
		addMorph: self textArea 
		frame: (0@0.5 corner: 1@1).	! !
