
!UIThemeVistary methodsFor: 'fill-styles'!
sliderNormalFillStyleFor: aSlider
	"Return the normal fillStyle for the given slider."
	
	|c inner|
	c := aSlider paneColor alphaMixed: 0.1 with: Color white.
	inner := aSlider innerBounds.
	^(GradientFillStyle ramp: {
			0.0->c darker duller.
			0.15-> c darker.
			0.8->c twiceLighter.
			1.0->c darker})
		origin: inner topLeft;
		direction: 0 @ inner height;
		radial: false! !
