
!ClosureHandlerProxy class methodsFor: 'instance creation'!
messageHandler: aClosure

	^ self new
		closure: aClosure;
		basicNew! !
