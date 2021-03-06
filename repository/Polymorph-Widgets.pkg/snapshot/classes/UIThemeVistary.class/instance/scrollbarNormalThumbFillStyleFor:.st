
!UIThemeVistary methodsFor: 'fill-styles-scrollbars'!
scrollbarNormalThumbFillStyleFor: aScrollbar
	"Return the normal scrollbar thumb fillStyle for the given scrollbar."
	
	|aColor c cm cd cb thumb grad offset|
	aColor := self scrollbarColorFor: aScrollbar.
	c := aColor  alphaMixed: 0.1 with: Color white.
	cm := aColor alphaMixed: 0.9 with: Color white.
	cd := cm alphaMixed: 0.9 with: Color black.
	cb := aColor alphaMixed: 0.6 with: Color black.
	grad := (GradientFillStyle ramp: {0.0->c. 0.48->cm. 0.49->cd. 1.0->cb})
		origin: aScrollbar topLeft;
		direction: (aScrollbar bounds isWide
			ifTrue: [0 @ aScrollbar height]
			ifFalse: [aScrollbar width @ 0]);
		radial: false.
	aScrollbar bounds isWide
		ifTrue: [thumb := self hThumbForm.
				offset := thumb extent // 2 + (0@1)]
		ifFalse: [thumb := self vThumbForm.
				offset := thumb extent // 2 + (1@0)].
	^((aScrollbar slider bounds isWide and: [aScrollbar slider width > (thumb width * 2)]) or: [
			aScrollbar slider bounds isWide not and: [aScrollbar slider height > (thumb height * 2)]])
		ifTrue: [CompositeFillStyle fillStyles: {
				grad.
				(ImageFillStyle
					form: thumb)
					origin: aScrollbar slider bounds center - offset;
					direction: thumb width@0}]
		ifFalse: [grad]! !
