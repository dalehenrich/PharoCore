
!NonInteractiveTranscript methodsFor: 'streaming'!
nextPutAll: aCollection
	^ self critical: [ 
		self stream nextPutAll: aCollection ]! !
