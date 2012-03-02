
!WeakRegistryTest methodsFor: 'mocketry'!
signalMockException
	MockExceptionWithPassAction new
		passAction: [ errorWasHere := true];
		signal! !
