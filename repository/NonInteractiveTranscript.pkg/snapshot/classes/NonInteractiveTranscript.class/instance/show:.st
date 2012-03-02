
!NonInteractiveTranscript methodsFor: 'streaming'!
show: anObject
	self critical: [
		self 
			print: anObject; 
			endEntry ]! !
