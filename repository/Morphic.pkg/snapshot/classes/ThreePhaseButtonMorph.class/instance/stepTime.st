
!ThreePhaseButtonMorph methodsFor: 'testing'!
stepTime
	(self hasProperty: #doesButtonAction) ifTrue:[^1].
	^super stepTime! !
