
!Locale methodsFor: 'accessing'!
determineLocaleID
	"Locale current determineLocaleID"
	| langCode isoLang countryCode isoCountry |
	langCode := self fetchISO2Language.
	isoLang := langCode
		ifNil: [^self localeID]
		ifNotNil: [langCode].
	countryCode := self primCountry.
	isoCountry := countryCode
		ifNil: [^LocaleID isoLanguage: isoLang]
		ifNotNil: [countryCode].
	^LocaleID isoLanguage: isoLang isoCountry: isoCountry! !
