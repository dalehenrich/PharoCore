
!SimplestClassListExample methodsFor: 'as yet unclassified'!
defaultTreeMorph
	^ super defaultTreeMorph
		"beCheckList;"
		"autoDeselection: true;"
		multiSelection: true;
		autoMultiSelection: true;
		yourself! !
