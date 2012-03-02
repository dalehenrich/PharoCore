
!FT2Face methodsFor: 'accessing'!
encoding
	encoding ifNil: [ self getCharMap ].
	^encoding! !
