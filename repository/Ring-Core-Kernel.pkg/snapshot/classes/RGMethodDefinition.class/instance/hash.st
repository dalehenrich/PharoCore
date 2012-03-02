
!RGMethodDefinition methodsFor: 'comparing'!
hash

	^super hash bitXor: self selector hash! !
