
!ListDialogWindow methodsFor: 'as yet unclassified'!
searchKeystroke: event
	|interval|
	
	searchMorph content ifNil: [ ^ false ].
	
	(event keyCharacter = Character arrowDown )
		ifTrue: [ ^ self searchKeystrokeDown ].
		
	(event keyCharacter = Character arrowUp)
		ifTrue: [ ^ self searchKeystrokeUp ].
	! !
