
!PluggableTextFieldMorph methodsFor: 'accessing'!
closeChooser	
	entryCompletion
		ifNotNil: [entryCompletion closeChooser]! !
