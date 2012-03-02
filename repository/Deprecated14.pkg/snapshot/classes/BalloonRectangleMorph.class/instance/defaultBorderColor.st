
!BalloonRectangleMorph methodsFor: 'initialization'!
defaultBorderColor
	"answer the default border color/fill style for the receiver"
	^ GradientFillStyle ramp: {0.0 -> Color black. 1.0 -> Color white}! !
