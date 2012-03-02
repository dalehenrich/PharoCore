
!PreferencesHandler methodsFor: 'protocol'!
perform

	actions do: [:each |
		
		each value ifNotNil: [:res | ^ res ]
	].
		
	^#()
	
! !
