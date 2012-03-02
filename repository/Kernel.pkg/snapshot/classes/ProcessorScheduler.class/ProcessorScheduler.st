
Object subclass: #ProcessorScheduler
	instanceVariableNames: 'quiescentProcessLists activeProcess'
	classVariableNames: 'BackgroundProcess HighIOPriority LowIOPriority SystemBackgroundPriority SystemRockBottomPriority TimingPriority UserBackgroundPriority UserInterruptPriority UserSchedulingPriority'
	poolDictionaries: ''
	category: 'Kernel-Processes'!

!ProcessorScheduler commentStamp: '<historical>' prior: 0!
My single instance, named Processor, coordinates the use of the physical processor by all Processes requiring service.!
