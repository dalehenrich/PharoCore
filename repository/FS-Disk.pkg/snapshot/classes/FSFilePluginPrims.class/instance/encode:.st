
!FSFilePluginPrims methodsFor: 'encoding primitives'!
encode: aString
	^ aString convertToWithConverter: LanguageEnvironment defaultFileNameConverter! !
