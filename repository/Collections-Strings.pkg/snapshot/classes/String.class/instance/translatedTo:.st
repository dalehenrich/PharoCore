
!String methodsFor: 'translating'!
translatedTo: localeID 
	"answer the receiver translated to the given locale id"
	^ NaturalLanguageTranslator translate: self toLocale: localeID! !
