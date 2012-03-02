
!UITheme methodsFor: 'services'!
chooseFontIn: aThemedMorph title: aString font: aFont
	"Answer the result of a font selector dialog with the given title and initial font."

	|d|
	d := aThemedMorph openModal: (
		Cursor wait showWhile: [
			self newFontSelector
				title: aString;
				selectedFont: aFont]).
	^d  cancelled
		ifFalse: [d selectedFont]! !
