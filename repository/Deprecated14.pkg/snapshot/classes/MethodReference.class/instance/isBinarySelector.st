
!MethodReference methodsFor: 'traits'!
isBinarySelector
	^self selector
		allSatisfy: [:each | each isSpecial]! !
