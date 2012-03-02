
!Transcripter class methodsFor: 'world menu'!
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Emergency Evaluator')
		action: [
			self emergencyEvaluator. 	
			"When running Morphic, try to refresh the display"
			Smalltalk globals at: #World ifPresent: [:w | w ifNotNil: [w restoreMorphicDisplay]]];
		parent: #Tools;
		help: 'Emergency Evaluator';
		icon: self icon.! !
