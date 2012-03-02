
!SharedQueue methodsFor: 'initializing'!
initialize
	super initialize.
	monitor := Monitor new.
	items := OrderedCollection new.
! !
