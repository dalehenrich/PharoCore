
!RGBehaviorDefinition methodsFor: 'testing'!
includesProtocol: aString
	"Looks for a protocols named = aString"
	
	^(protocols detect:[ :each| each = aString ] ifNone:[ nil ]) notNil
! !
