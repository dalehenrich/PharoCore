
!ThreadSafeTranscript methodsFor: 'streaming'!
cr 
	
	accessSemaphore
		critical: [stream cr].
! !
