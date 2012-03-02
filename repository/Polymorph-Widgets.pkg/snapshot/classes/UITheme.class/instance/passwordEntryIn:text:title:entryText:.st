
!UITheme methodsFor: 'services'!
passwordEntryIn: aThemedMorph text: aStringOrText title: aString entryText: defaultEntryText
	"Answer the result of a password entry dialog (a string or nil if cancelled)
	with the given label and title."

	^(aThemedMorph openModal: (
		PasswordDialogWindow new
			textFont: self textFont;
			title: aString;
			text: aStringOrText;
			entryText: defaultEntryText)) entryText! !
