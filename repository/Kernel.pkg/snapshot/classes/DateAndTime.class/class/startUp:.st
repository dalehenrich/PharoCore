
!DateAndTime class methodsFor: 'initialize-release'!
startUp: resuming
	resuming ifFalse: [ ^ self ].
	OffsetsAreValid := false.
	[
		self initializeOffsets.
		OffsetsAreValid := true
	] forkAt: Processor userInterruptPriority.! !
