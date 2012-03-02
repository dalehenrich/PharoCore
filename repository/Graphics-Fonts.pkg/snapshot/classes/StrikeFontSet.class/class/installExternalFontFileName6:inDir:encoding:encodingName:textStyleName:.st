
!StrikeFontSet class methodsFor: 'filein/out'!
installExternalFontFileName6: fileName inDir: dir encoding: encoding encodingName: aString textStyleName: styleName 
	| aStream |
	aStream := dir readOnlyFileNamed: fileName.
	[self
		installExternalFontOn: aStream
		encoding: encoding
		encodingName: aString
		textStyleName: styleName]
		ensure: [aStream close]! !
