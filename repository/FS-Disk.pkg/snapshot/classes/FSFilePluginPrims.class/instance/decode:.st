
!FSFilePluginPrims methodsFor: 'encoding primitives'!
decode: aString
	^ aString convertFromWithConverter: LanguageEnvironment defaultFileNameConverter! !
