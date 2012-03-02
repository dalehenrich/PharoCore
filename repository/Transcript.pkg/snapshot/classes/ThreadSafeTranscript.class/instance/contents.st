
!ThreadSafeTranscript methodsFor: 'protected low level'!
contents 
	^ accessSemaphore critical: [ stream contents ]! !
