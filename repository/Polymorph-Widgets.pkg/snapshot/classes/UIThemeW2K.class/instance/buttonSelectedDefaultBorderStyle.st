
!UIThemeW2K methodsFor: 'border-styles-buttons'!
buttonSelectedDefaultBorderStyle
	"Answer the border style for selected default buttons."
	
	| aComp theBorders |
	aComp := CompositeBorder new.
	aComp width: 2.
	theBorders := OrderedCollection new.
	theBorders add: (SimpleBorder color: Color black width: 1). 
	theBorders add: (BorderStyle inset color: (Color gray: 0.50); width: 1). 
	aComp borders: theBorders.
	^aComp! !
