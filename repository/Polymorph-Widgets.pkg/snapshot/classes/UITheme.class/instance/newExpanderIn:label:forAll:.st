
!UITheme methodsFor: 'morph creation'!
newExpanderIn: aThemedMorph label: aString forAll: controls
	"Answer an expander with the given label and controls."

	|answer|
	answer := ExpanderMorph new
		font: self menuFont;
		titleText: aString.
	controls do: [:m |
		answer addMorphBack: m].
	^answer! !
