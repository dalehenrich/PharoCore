
!LocaleID methodsFor: 'accessing'!
displayCountry
	^(ISOLanguageDefinition iso2Countries at: self isoCountry asUppercase ifAbsent: [ self isoCountry ]) ! !
