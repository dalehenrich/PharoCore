
!TabLabelMorph methodsFor: 'as yet unclassified'!
label
	"Answer the label contents."

	^self firstSubmorph userString ifNil: [self firstSubmorph]! !
