
!Morph methodsFor: 'events-processing'!
handleMouseDown: anEvent
	"System level event handling."
	anEvent wasHandled ifTrue:[^self]. "not interested"
	anEvent hand removePendingBalloonFor: self.
	anEvent wasHandled: true.
	
	(anEvent controlKeyPressed
			and: [ self cmdGesturesEnabled
			and: [ anEvent shiftPressed ]])
		ifTrue: [^ self invokeMetaMenu: anEvent].

	"Make me modal during mouse transitions"
	anEvent hand newMouseFocus: self event: anEvent.
	anEvent blueButtonChanged ifTrue:[^self blueButtonDown: anEvent].
	
	self mouseDown: anEvent.
	
	anEvent hand removeHaloFromClick: anEvent on: self.
	(self handlesMouseStillDown: anEvent) ifTrue:[
		self startStepping: #handleMouseStillDown: 
			at: Time millisecondClockValue + self mouseStillDownThreshold
			arguments: {anEvent copy resetHandlerFields}
			stepTime: self mouseStillDownStepRate ].
! !
