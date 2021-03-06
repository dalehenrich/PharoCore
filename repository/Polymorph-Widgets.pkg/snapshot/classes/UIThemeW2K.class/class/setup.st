
!UIThemeW2K class methodsFor: 'defaults'!
setup
	
	"self setup"
	"setup the fonts/background color ala a real desktop.. this assumes these fonts exist on your system"
	
	| aStandardFont aBoldFont |	
		
	aStandardFont := LogicalFont familyName: 'Arial' pointSize: 9 stretchValue: 5 weightValue: 400 slantValue: 0.
	aBoldFont := LogicalFont familyName: 'Arial' pointSize: 9 stretchValue: 5 weightValue: 700 slantValue: 0.

	StandardFonts windowTitleFont: aBoldFont.	
	StandardFonts balloonFont: aStandardFont.
	StandardFonts buttonFont: aStandardFont.
	StandardFonts codeFont: aStandardFont.
	StandardFonts haloFont: aStandardFont.
	StandardFonts listFont: aStandardFont.
	StandardFonts menuFont: aStandardFont.
	StandardFonts defaultFont: aStandardFont.
	
	self world color: (Color r: 0.227 g: 0.431 b: 0.646).
	self beCurrent.! !
