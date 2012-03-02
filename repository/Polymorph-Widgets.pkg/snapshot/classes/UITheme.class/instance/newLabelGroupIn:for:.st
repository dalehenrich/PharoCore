
!UITheme methodsFor: 'morph creation'!
newLabelGroupIn: aThemedMorph for: labelsAndControls
	"Answer a morph laid out with a column of labels and a column of associated controls.
	The vResizing for each row will be #spaceFill if the control for that row specifies
	this, otherwise #shrinkWrap."

	| answer labels labelWidth lc |
	lc := labelsAndControls collect: [:a |
		(a key isMorph
			ifTrue: [a key]
			ifFalse: [a key ifNotNil: [self newLabelIn: aThemedMorph label: a key asString]])
			-> a value].
	answer := PanelMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		color: Color transparent;
		changeTableLayout;
		cellInset: 4.
	labels := Morph new
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		changeTableLayout.
	lc do: [:a |
		a key ifNotNil: [labels addMorphBack: a key]].
	labelWidth := labels minExtent x.
	lc do: [:a | | row |
		a key ifNotNil: [a key hResizing: #rigid; extent: labelWidth@ a key height].
		row := self newRowIn: aThemedMorph for: (a key ifNil: [{a value}] ifNotNil: [{a key. a value}]).
		row vResizing: (a value vResizing = #spaceFill ifTrue: [#spaceFill] ifFalse: [#shrinkWrap]).
		answer addMorphBack: row].
	^answer
			! !
