
!Unicode class methodsFor: 'casing'!
toUppercaseCharacter: aCharacter
	"Transform a Character into uppercase."
	
	^ (ToUpper at: aCharacter charCode ifAbsent: [nil])
			ifNil: [ aCharacter ]
			ifNotNil: [:up | self value: up]! !
