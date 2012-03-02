
!TickSelectionListMorph methodsFor: 'event'!
basicKeyPressed: aCharacter

	aCharacter == Character space
		ifTrue: [ ^ self model toogleSelectionValue ].
	
	^ super basicKeyPressed: aCharacter! !
