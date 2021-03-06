
!UIThemeW2K methodsFor: 'border-styles-buttons'!
buttonNormalDefaultBorderStyle
	"Answer the border style for default buttons."
	
	| aComp theBorders |
	aComp := CompositeBorder new.
	aComp width: 2.
	theBorders := OrderedCollection new.
	theBorders add: (SimpleBorder color: Color black width: 1). 
	theBorders add: (BorderStyle raised color: (Color gray: 0.80); width: 1). 
	aComp borders: theBorders.
	^aComp! !
