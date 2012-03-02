
!MockTranscript methodsFor: 'streaming'!
show: anObject
	stream nextPutAll: anObject asString
	! !
