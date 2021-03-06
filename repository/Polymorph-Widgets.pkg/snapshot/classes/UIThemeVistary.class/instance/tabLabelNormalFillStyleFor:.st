
!UIThemeVistary methodsFor: 'fill-styles'!
tabLabelNormalFillStyleFor: aTabLabel
	"Return the normal fillStyle for the given tab label."
	
	|aColor c cm cd cb|
	aColor := aTabLabel paneColor lighter.
	c := aColor alphaMixed: 0.1 with: Color white.
	cm := aColor alphaMixed: 0.8 with: Color white.
	cd := aColor alphaMixed: 0.8 with: Color black.
	cb := aColor alphaMixed: 0.8 with: Color white.
	^(GradientFillStyle ramp: {0.0->c. 0.5->cm. 0.51->cd. 1.0->cb})
		origin: aTabLabel bounds origin;
		direction: 0 @ aTabLabel height;
		radial: false! !
