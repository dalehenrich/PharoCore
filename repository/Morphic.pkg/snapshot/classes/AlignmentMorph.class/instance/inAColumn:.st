
!AlignmentMorph methodsFor: 'visual properties'!
inAColumn: aCollectionOfMorphs

	| col |
	col := self class newColumn
		color: Color transparent;
		vResizing: #shrinkWrap;
		layoutInset: 1;
		wrapCentering: #center;
		cellPositioning: #topCenter.
	aCollectionOfMorphs do: [ :each | col addMorphBack: each].
	^col! !
