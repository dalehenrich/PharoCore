
!Class methodsFor: 'as yet unclassified'!
sharedPoolOfVarNamed: aString
	"Returns the SharedPool or nil from which the pool variable named aString is coming from."
	
	 ^ self sharedPools 
			detect: [:each | each usesClassVarNamed: aString ]
			ifNone: [
						superclass == nil
							ifTrue: [nil]
							ifFalse: [superclass sharedPoolOfVarNamed: aString]
						]
					! !
