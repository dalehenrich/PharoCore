
!ThreadSafeTranscript methodsFor: 'protected low level'!
space

	accessSemaphore
		critical: [stream space].
! !
