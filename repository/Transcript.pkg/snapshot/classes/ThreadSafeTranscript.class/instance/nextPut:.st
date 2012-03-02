
!ThreadSafeTranscript methodsFor: 'streaming'!
nextPut: value
	
	accessSemaphore
		critical: [stream nextPut: value].
	^value! !
