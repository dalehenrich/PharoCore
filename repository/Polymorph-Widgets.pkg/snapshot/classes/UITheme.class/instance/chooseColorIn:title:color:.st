
!UITheme methodsFor: 'services'!
chooseColorIn: aThemedMorph title: aString color: aColor
	"Answer the result of a color selector dialog with the given title and initial color."

	|d|
	d := aThemedMorph openModal: (
		ColorSelectorDialogWindow new
			title: aString;
			selectedColor: aColor).
	^d  cancelled
		ifFalse: [d selectedColor]! !
