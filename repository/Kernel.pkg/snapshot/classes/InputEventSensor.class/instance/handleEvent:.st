
!InputEventSensor methodsFor: 'events'!
handleEvent: evt

	self queueEvent: evt shallowCopy! !
