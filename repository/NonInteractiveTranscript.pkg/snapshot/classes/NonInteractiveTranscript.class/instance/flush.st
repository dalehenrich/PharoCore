
!NonInteractiveTranscript methodsFor: 'streaming'!
flush
	self critical: [ 
		self stream flush ]! !
