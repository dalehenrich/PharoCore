
!BalloonRectangleMorph methodsFor: 'initialization'!
defaultColor
	"answer the default color/fill style for the receiver"
	| result |
	result := GradientFillStyle ramp: {0.0 -> Color green. 0.5 -> Color yellow. 1.0 -> Color red}.
	result radial: true.
	^ result! !
