
!Morph methodsFor: 'events-processing'!
handleMouseEnter: anEvent
	"System level event handling."
	(anEvent isDraggingEvent) ifTrue:[
		(self handlesMouseOverDragging: anEvent) ifTrue:[
			anEvent wasHandled: true.
			self mouseEnterDragging: anEvent].
		^self].
	self wantsBalloon
		ifTrue:[anEvent hand triggerBalloonFor: self after: self balloonHelpDelayTime].
	(self handlesMouseOver: anEvent) ifTrue:[
		anEvent wasHandled: true.
		self mouseEnter: anEvent.
	].! !
