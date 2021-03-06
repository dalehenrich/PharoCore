
!PharoOrangeTheme methodsFor: 'fill-styles-buttons'!
buttonSelectedFillStyleFor: aButton
	"Return the normal button fillStyle for the given button."
	
	| top bottom |
	top := settings selectionColor lighter lighter.
	bottom := Color gray alpha: 0.1. 

	^ CompositeFillStyle 
		fillStyles: {
			self buttonNormalFillStyleFor: aButton.
			
			(GradientFillStyle ramp: {
			0.8->bottom.
			0.9->top.
			1.0->top.})
			origin: aButton bounds origin;
			direction: 0 @ aButton height;
			radial: false
		}			

! !
