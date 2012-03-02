
!ThreadSafeTranscript methodsFor: 'streaming'!
close
	self flush.
	accessSemaphore critical: [ stream close ]
	! !
