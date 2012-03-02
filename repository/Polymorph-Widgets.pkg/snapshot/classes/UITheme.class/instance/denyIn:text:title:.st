
!UITheme methodsFor: 'services'!
denyIn: aThemedMorph text: aStringOrText title: aString
	"Answer the result of an deny dialog (true) with the given label and title."

	self denySound play.
	^(aThemedMorph openModal: (
		DenyDialogWindow new
			textFont: self textFont;
			title: aString;
			text: aStringOrText)) cancelled not! !
