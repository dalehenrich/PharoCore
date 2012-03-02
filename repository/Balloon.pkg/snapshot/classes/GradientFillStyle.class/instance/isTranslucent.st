
!GradientFillStyle methodsFor: 'testing'!
isTranslucent
	^isTranslucent ifNil:[isTranslucent := self checkTranslucency]! !
