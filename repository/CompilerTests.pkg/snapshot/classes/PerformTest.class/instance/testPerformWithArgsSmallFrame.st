
!PerformTest methodsFor: 'testing'!
testPerformWithArgsSmallFrame

	self shouldnt: [self doPerformOldSmallFrame] raise: Error.

	 ! !
