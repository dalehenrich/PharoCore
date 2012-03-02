
!SubscriptOutOfBounds class methodsFor: 'signaling'!
signalFor: subscript
	^ self 
		signalFor: subscript 
		lowerBound: nil 
		upperBound: nil! !
