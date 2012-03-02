
!Unicode class methodsFor: 'casing'!
toLowercaseCharacter: aCharacter
	"Transform a Character into lowercase."
	
	^(ToLower at: aCharacter charCode ifAbsent: [nil])
			ifNil: [ aCharacter ]
			ifNotNil: [:low | self value: low]! !
