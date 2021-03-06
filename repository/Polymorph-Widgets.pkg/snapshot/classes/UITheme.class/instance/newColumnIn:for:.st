
!UITheme methodsFor: 'morph creation'!
newColumnIn: aThemedMorph for: controls
	"Answer a morph laid out with a column of controls."

	|answer|
	answer := PanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent; "non pane color tracking"
		changeTableLayout;
		cellInset: 8;
		cellPositioning: #leftCenter.
	controls do: [:m | answer addMorphBack: m].
	^answer
			! !
