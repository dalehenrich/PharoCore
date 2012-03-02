
!NonInteractiveTranscript methodsFor: 'private'!
critical: block
	^ accessSemaphore 
		critical: block ! !
