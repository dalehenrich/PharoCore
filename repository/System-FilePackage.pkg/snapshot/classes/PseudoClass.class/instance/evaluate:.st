
!PseudoClass methodsFor: 'private'!
evaluate: aString
	^self class evaluatorClass evaluate: aString for: nil logged: true! !
