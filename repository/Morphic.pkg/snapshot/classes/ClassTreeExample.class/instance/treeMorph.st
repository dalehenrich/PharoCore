
!ClassTreeExample methodsFor: 'as yet unclassified'!
treeMorph
	| treeMorph |
	treeMorph := (LazyMorphTreeMorph on: self)
				beMultiple;
				columns: {
					MorphTreeColumn new startWidth: 300; rowMorphGetSelector: #classButton; headerButtonLabel: 'Class' font:  nil.
					MorphTreeColumn new startWidth: 500; rowMorphGetSelector: #commentText; headerButtonLabel: 'Comment' font:  nil
				};
				rowInset: 4;
				treeLineWidth: 1;
				columnInset: 4;
				getMenuSelector: #menu:shifted:;
				rowColorForEven: Color lightGray muchLighter.
	^ treeMorph buildContents! !
