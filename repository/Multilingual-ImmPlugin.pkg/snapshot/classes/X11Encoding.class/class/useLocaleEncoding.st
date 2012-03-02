
!X11Encoding class methodsFor: 'as yet unclassified'!
useLocaleEncoding

	self setEncodingToLocale.
	LanguageEnvironment startUp.
	^ self encoding.! !
