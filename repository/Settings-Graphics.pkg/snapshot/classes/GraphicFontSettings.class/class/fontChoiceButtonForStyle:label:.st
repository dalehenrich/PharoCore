
!GraphicFontSettings class methodsFor: 'fonts'!
fontChoiceButtonForStyle: aSymbol label: aLabel
	| label |
	label := StringMorph contents: aLabel asString font: (TextStyle default fontOfPointSize: (StandardFonts pointSizeForStyleNamed: aSymbol)).
	^ (UITheme current
		newButtonIn: World
		for: self
		getState: nil 
		action: #setFontsToStyleNamed:
		arguments: { aSymbol }
		getEnabled: nil
		getLabel: nil
		help: ('Change font style to ', aLabel) translated)
			label: label;
			yourself
! !
