
!ThreadSafeTranscript methodsFor: 'protected low level'!
tab
	
	accessSemaphore
		critical: [stream tab].
! !
