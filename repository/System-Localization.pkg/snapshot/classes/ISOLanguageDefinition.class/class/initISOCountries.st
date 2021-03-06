
!ISOLanguageDefinition class methodsFor: 'private'!
initISOCountries
	"ISOLanguageDefinition initISOCountries"
	| iso3166Table |
	iso3166Table := ISOLanguageDefinition buildIso3166CodesTables.
	ISO2Countries := Dictionary new.
	ISO3Countries := Dictionary new.
	iso3166Table do: [:entry | 
		ISO2Countries at: (entry at: 2) put: (entry at: 1).
		ISO3Countries at: (entry at: 3) put: (entry at: 1)].
	self extraCountryDefinitions do: [:entry | 
		ISO2Countries at: (entry at: 2) put: (entry at: 1).
		ISO3Countries at: (entry at: 3) put: (entry at: 1)]! !
