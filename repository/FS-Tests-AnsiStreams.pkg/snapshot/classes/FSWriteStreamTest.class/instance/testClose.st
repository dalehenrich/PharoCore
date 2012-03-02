
!FSWriteStreamTest methodsFor: 'tests'!
testClose
	self
		shouldnt: [stream close]
		raise: Error! !
