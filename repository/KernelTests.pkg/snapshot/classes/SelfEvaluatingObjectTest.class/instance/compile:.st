
!SelfEvaluatingObjectTest methodsFor: 'utilities'!
compile: aString
	^ self class evaluatorClass evaluate: aString! !
