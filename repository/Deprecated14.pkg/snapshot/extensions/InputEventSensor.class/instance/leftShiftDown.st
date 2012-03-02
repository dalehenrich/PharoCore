
!InputEventSensor methodsFor: '*Deprecated14'!
leftShiftDown
	"Answer whether the shift key on the keyboard is being held down. The name of this message is a throwback to the Alto, which had independent left and right shift keys."

	self deprecated: 'Use shiftPressed' on:  '22 July 2011' in: #Pharo1.4.
	^ self shiftPressed! !
