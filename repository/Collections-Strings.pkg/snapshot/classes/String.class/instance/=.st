
!String methodsFor: 'comparing'!
= aString 
	"Answer whether the receiver sorts equally as aString.
	The collation order is simple ascii (with case differences)."
	
	aString isString ifFalse: [ ^ false ].
	^ (self compare: self with: aString collated: AsciiOrder) = 2! !
