
!UIThemeW2K methodsFor: 'label-styles'!
createExpandBoxFor: aSystemWindow
	"Answer a button for closing the window."
	
	|form msb|
	form := self windowMaximizeForm.
	msb := MultistateButtonMorph new extent: form extent.
	msb activeEnabledNotOverUpFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledNotOverUpFillStyle: (ImageFillStyle form: form).
	msb activeEnabledOverUpFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledOverUpFillStyle: (ImageFillStyle form: form).
	
	form := self windowMaximizeDownForm.
	msb activeEnabledOverDownFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledOverDownFillStyle: (ImageFillStyle form: form).
	msb addUpAction: [aSystemWindow expandBoxHit].
	msb setBalloonText: 'Maximize' translated.
	"	extent: aSystemWindow boxExtent."
	^msb! !
