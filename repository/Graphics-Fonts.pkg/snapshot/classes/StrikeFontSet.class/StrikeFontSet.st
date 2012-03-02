
AbstractFont subclass: #StrikeFontSet
	instanceVariableNames: 'fontArray emphasis derivativeFonts name'
	classVariableNames: ''
	poolDictionaries: 'TextConstants'
	category: 'Graphics-Fonts'!

!StrikeFontSet commentStamp: 'LaurentLaffont 3/31/2011 21:07' prior: 0!
I am something acts like a font out of collection of fonts. First font in me is used as representative font to answer many messages.

Examples:
- display a font: StrikeFontSet allInstances first fontDisplay 
- calculate pixels width of a string for a font: StrikeFontSet allInstances first widthOfString: 'Pharo'!
