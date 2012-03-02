
!BalloonEngine methodsFor: 'initialize'!
release
	self class recycleBuffer: workBuffer.
	workBuffer := nil.! !
