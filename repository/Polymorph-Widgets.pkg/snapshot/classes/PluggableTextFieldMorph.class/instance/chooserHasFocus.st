
!PluggableTextFieldMorph methodsFor: 'testing'!
chooserHasFocus
	^ entryCompletion notNil and: [entryCompletion chooser notNil and: [entryCompletion chooser hasFocus]]
! !
