
!UIThemeW2K methodsFor: 'border-styles-buttons'!
buttonSelectedBorderStyleFor: aButton
	"Return the selected button borderStyle for the given button."

	aButton isDefault ifTrue: [^self buttonSelectedDefaultBorderStyle].
	^self buttonPressedBorderStyleFor: aButton! !
