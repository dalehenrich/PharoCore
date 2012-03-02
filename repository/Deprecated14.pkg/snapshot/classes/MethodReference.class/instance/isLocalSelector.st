
!MethodReference methodsFor: 'testing'!
isLocalSelector
	^self actualClass
		includesLocalSelector: self methodSymbol! !
