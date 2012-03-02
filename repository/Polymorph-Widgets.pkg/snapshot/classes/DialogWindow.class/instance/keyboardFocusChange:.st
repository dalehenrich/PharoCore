
!DialogWindow methodsFor: 'event handling'!
keyboardFocusChange: aBoolean
	"Set the focus to the default button."

	aBoolean ifTrue: [
		self defaultFocusMorph ifNotNil: [:b |
			b takeKeyboardFocus]]! !
