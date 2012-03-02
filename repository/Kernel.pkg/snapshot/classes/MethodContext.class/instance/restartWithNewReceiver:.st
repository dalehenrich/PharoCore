
!MethodContext methodsFor: 'private-exceptions'!
restartWithNewReceiver: obj

	self
		swapReceiver: obj;
		restart! !
