
!Morph methodsFor: '*Polymorph-Widgets'!
theme: aUITheme
	"Set the current theme for the receiver."

	self theme = aUITheme ifFalse: [
		self setProperty: #theme toValue: aUITheme.
		self themeChanged]! !
