
!SystemProgressBarMorph methodsFor: 'accessing'!
initialize
	"Initialize the receiver from the current theme."
	
	super initialize.
	barSize := 0.
	self 
		fillStyle: ( self theme progressBarFillStyleFor: self);
		borderStyle: (self theme progressBarBorderStyleFor: self);
		barFillStyle: ( self theme  progressBarProgressFillStyleFor: self)! !
