
!StrikeFontSet class methodsFor: 'filein/out'!
installExternalFontOn: aStream forLocale: locale 
	self
		installExternalFontOn: aStream
		encoding: locale languageEnvironment leadingChar
		encodingName: locale languageEnvironment fontEncodingName
		textStyleName: #DefaultMultiStyle! !
