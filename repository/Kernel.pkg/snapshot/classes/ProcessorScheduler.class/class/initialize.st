
!ProcessorScheduler class methodsFor: 'class initialization'!
initialize
     
	SystemRockBottomPriority := 10.
	SystemBackgroundPriority := 20.
	UserBackgroundPriority := 30.
	UserSchedulingPriority := 40.
	UserInterruptPriority := 50.
	LowIOPriority := 60.
	HighIOPriority := 70.
	TimingPriority := 80.

	"ProcessorScheduler initialize."! !
