
!ThemeSettings methodsFor: 'accessing'!
secondarySelectionColor
	"Answer the value of selectionColor"

	^ secondarySelectionColor ifNil: [secondarySelectionColor :=   (TranslucentColor r: 0.351 g: 0.939 b: 0.46 alpha: 0.35)]! !
