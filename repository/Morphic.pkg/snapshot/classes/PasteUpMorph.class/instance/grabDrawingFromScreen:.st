
!PasteUpMorph methodsFor: 'world menu'!
grabDrawingFromScreen: evt
	"Allow the user to specify a rectangular area of the Display, capture the pixels from that area, and use them to create a new drawing morph. Attach the result to the hand."
	| m |
	m := self drawingClass  withForm: Form fromUser.
	evt hand position: self activeHand cursorPoint.  "update hand pos after Sensor loop in fromUser"
	evt hand attachMorph: m.! !
