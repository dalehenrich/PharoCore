
!RGClassDefinition methodsFor: 'pool dictionaries'!
allPoolDictionaries
	"Answer a collection of the pools the receiver shares, including those defined  
	in the superclasses of the receiver."

	^self hasSuperclass 
		ifFalse:[ poolDictionaries ]
		ifTrue:[ self superclass allPoolDictionaries, poolDictionaries ]! !
