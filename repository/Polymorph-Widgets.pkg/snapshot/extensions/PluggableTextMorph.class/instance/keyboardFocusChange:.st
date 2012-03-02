
!PluggableTextMorph methodsFor: '*Polymorph-Widgets'!
keyboardFocusChange: aBoolean
	"Pass on to text morph."
	
	aBoolean ifTrue: [self textMorph takeKeyboardFocus]! !
