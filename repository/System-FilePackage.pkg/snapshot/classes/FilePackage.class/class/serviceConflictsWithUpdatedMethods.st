
!FilePackage class methodsFor: 'reader service'!
serviceConflictsWithUpdatedMethods
	^ SimpleServiceEntry 
		provider: self 
		label: 'Conflicts with updated methods'
		selector: #conflictsWithUpdatedMethods:
		description: 'Check for conflicts with more recently updated methods in the image, showing the conflicts in a transcript window'
		buttonLabel: 'Conflicts'! !
