
!UIThemeW2K methodsFor: 'fill-styles'!
windowInactiveTitleFillStyleFor: aWindow
	"Return the window inactive title fillStyle for the given window."
	
	|aColor aLColor |
	
	aColor := Color gray.
	aLColor := Color h: 0 s: 0 v: 0.75.
	^(GradientFillStyle ramp: {0.0 -> aColor. 1.0 -> aLColor })
		origin: aWindow topLeft;
		direction: aWindow width @ 0;
		radial: false
! !
