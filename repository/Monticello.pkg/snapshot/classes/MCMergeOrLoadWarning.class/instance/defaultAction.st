
!MCMergeOrLoadWarning methodsFor: 'as yet unclassified'!
defaultAction
	^ ( UIManager default
		confirm: self messageText
		trueChoice: 'Load' translated
		falseChoice: 'Merge' translated
		cancelChoice: 'Cancel' translated
		default: nil ).! !
