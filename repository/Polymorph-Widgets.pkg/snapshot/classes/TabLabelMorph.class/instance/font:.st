
!TabLabelMorph methodsFor: 'as yet unclassified'!
font: aFont
	"Set the label font"

	self allMorphsDo: [:m |
		(m ~= self and: [m respondsTo: #font:])
			ifTrue: [m font: aFont]]! !
