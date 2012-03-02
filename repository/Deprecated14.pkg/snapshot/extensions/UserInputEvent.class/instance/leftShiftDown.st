
!UserInputEvent methodsFor: '*deprecated14'!
leftShiftDown
	"Answer true if the shift key on the keyboard was being held down when this event occurred."
	
	self deprecated: 'Use shiftPressed' on:  '22 July 2011' in: #Pharo1.4.
	^ self shiftPressed
! !
