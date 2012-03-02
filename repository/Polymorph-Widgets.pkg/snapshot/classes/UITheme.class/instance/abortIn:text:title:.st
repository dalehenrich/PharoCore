
!UITheme methodsFor: 'services'!
abortIn: aThemedMorph text: aStringOrText title: aString
	"Answer the result of an error dialog (true) with the given label and title."

	self abortSound play.
	^(aThemedMorph openModal: (
		ErrorDialogWindow new
			textFont: self textFont;
			title: aString;
			text: aStringOrText)) cancelled not! !
