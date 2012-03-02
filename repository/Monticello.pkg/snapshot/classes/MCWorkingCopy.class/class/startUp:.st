
!MCWorkingCopy class methodsFor: 'initialize'!
startUp: resuming
	"Ensure Monticello is receiving system change notifications."

	resuming ifTrue:
		[Smalltalk globals
			at: #SystemChangeNotifier
			ifPresent: [:scn| self reregisterForNotificationsWith: scn uniqueInstance]]
! !
