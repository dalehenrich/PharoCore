
!ThreadSafeTranscript methodsFor: 'streaming'!
with: aBlock
	^ accessSemaphore critical: [ aBlock value: stream ]! !
