
!PreferencesHandler methodsFor: 'initialization'!
buildActionList

	"First, we look at image folder,
	then we look at preferences folder,
	and finally at general preferences folder "

	^  OrderedCollection new
		add: [ self lookInImageDirectory ];
		add: [self lookInPreferencesFolder ];
		add: [self lookInGeneralPreferencesFolder ];
		yourself.
! !
