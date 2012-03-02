
!TimeStampTest methodsFor: 'Tests'!
testFromSeconds

	self
		assert: (self timestampClass fromSeconds: 3124958100) = timestamp.! !
