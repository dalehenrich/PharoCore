
!NaturalLanguageFormTranslator class methodsFor: 'accessing'!
localeID: localeID 
	^ self cachedTranslations
		at: localeID
		ifAbsentPut: [self new localeID: localeID]! !
