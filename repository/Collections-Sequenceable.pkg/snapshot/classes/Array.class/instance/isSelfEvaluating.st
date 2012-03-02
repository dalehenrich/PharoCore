
!Array methodsFor: 'self evaluating'!
isSelfEvaluating
	^ (self allSatisfy: [:each | each isSelfEvaluating]) and: [self class == Array]! !
