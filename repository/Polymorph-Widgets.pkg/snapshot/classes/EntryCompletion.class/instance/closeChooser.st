
!EntryCompletion methodsFor: 'accessing'!
closeChooser
	chooser 
		ifNotNil: [chooser close.
			chooser := nil].
! !
