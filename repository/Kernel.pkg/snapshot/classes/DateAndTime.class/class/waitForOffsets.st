
!DateAndTime class methodsFor: 'initialize-release'!
waitForOffsets
	OffsetsAreValid ifFalse: [
		[
			(Delay forSeconds: 1) wait.
			OffsetsAreValid
		] whileFalse
	]! !
