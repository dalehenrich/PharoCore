
!NumberParser methodsFor: 'parsing-public'!
nextInteger
	"Read and answer next integer from sourceStream contents.
	Default behaviour is to read an integer in base 10.
	Subclasses might implement alternatives."

	^self nextIntegerBase: 10! !
