
!ListDialogWindow methodsFor: 'as yet unclassified'!
listKeystroke: event
	event keyCharacter = Character arrowUp 
		ifTrue: [ ^ self listKeystrokeUp ].
		
	event keyCharacter = Character arrowDown 
		ifTrue: [ ^ self listKeystrokeDown ].! !
