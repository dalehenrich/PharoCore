
!MethodReference methodsFor: 'queries'!
category
	^ category ifNil: [category := self actualClass organization categoryOfElement: methodSymbol]! !
