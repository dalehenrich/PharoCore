
!PluggableTextFieldMorph methodsFor: '*Polymorph-Widgets'!
focusChanged
	| outerMorph |
	(self hasFocus or: [self chooserHasFocus])
		ifFalse: [self closeChooser].
	super focusChanged
! !
