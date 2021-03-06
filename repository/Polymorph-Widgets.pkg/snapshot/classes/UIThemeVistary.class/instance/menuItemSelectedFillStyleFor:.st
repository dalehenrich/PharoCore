
!UIThemeVistary methodsFor: 'fill-styles-buttons'!
menuItemSelectedFillStyleFor: aMenuItem
	"Answer the selected fill style to use for the given menu item."
	
	|c aColor selcol cm cd cb|
	Display depth <= 2 ifTrue: [^ Color gray].
	aColor := aMenuItem owner color isTransparent
		ifTrue: [aMenuItem paneColor darker]
		ifFalse: [aMenuItem owner color darker].
	selcol := (self selectionColor adjustSaturation: 0.2 brightness: 0.5).
	c := aColor  alphaMixed: 0.1 with: Color white.
	cm := aColor alphaMixed: 0.4 with: selcol.
	cd := aColor alphaMixed: 0.6 with: Color black.
	cb := aColor alphaMixed: 0.1 with: (self selectionColor adjustSaturation: 0.7 brightness: 1.0) whiter.
	^(GradientFillStyle ramp: {
			0.0->c. 0.5->cm. 0.51->cd. 0.8->cb. 1.0->Color white})
		origin: aMenuItem topLeft;
		direction: 0 @ aMenuItem height! !
