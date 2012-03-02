
!MethodReference methodsFor: 'accessing'!
compiledMethod
	self deprecated: 'use RGMethodDefinition' on: '8 October 2011'  in: 'Pharo1.4'.
	^ self actualClass compiledMethodAt: methodSymbol ! !
