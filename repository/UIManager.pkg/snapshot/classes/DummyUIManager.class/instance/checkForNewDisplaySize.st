
!DummyUIManager methodsFor: 'display'!
checkForNewDisplaySize

	Display extent = DisplayScreen actualScreenSize ifTrue: [^ self].
	DisplayScreen startUp.
! !
