
!GradientFillStyle methodsFor: 'private'!
checkTranslucency
	^colorRamp anySatisfy: [:any| any value isTranslucent]! !
