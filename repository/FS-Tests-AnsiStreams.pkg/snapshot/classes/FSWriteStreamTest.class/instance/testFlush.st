
!FSWriteStreamTest methodsFor: 'tests'!
testFlush
	
	self
		shouldnt: [stream flush]
		raise: Error! !
