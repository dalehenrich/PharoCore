
!SubscriptOutOfBounds class methodsFor: 'signaling'!
signalFor: subscript lowerBound: lowerBound upperBound: upperBound
	^ self 
		signalFor: subscript 
		lowerBound: lowerBound 
		upperBound: upperBound 
		in: nil
! !
