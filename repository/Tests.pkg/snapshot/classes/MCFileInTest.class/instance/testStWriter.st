
!MCFileInTest methodsFor: 'testing'!
testStWriter
	self
		assertFileOutFrom: MCStWriter
		canBeFiledInWith: [stream fileIn].
! !
