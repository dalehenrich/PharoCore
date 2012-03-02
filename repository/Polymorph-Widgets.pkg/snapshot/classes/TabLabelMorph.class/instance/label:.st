
!TabLabelMorph methodsFor: 'as yet unclassified'!
label: aStringOrMorph
	"Change the label contents"

	|l|
	l := aStringOrMorph isMorph
		ifTrue: [aStringOrMorph]
		ifFalse: [(self theme buttonLabelForText: aStringOrMorph)
					vResizing: #shrinkWrap;
					hResizing: #shrinkWrap].
	self
		removeAllMorphs;
		addMorph: l! !
