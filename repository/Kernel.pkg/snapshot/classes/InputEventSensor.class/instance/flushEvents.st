
!InputEventSensor methodsFor: 'events'!
flushEvents
	eventQueue ifNotNil:[eventQueue flush]! !
