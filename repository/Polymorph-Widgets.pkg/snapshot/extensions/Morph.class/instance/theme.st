
!Morph methodsFor: '*Polymorph-Widgets'!
theme
	"Answer the current theme for the receiver."

	(self valueOfProperty: #theme) ifNotNil: [:t | ^ t].
	^(self window ifNil: [self class]) theme! !
