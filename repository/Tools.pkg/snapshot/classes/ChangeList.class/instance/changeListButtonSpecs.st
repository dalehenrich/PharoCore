
!ChangeList methodsFor: 'initialization-release'!
changeListButtonSpecs

	^#(
		('Select all' 			selectAll				'select all entries')
		('Deselect all'		deselectAll			'deselect all entries')
		('Select conflicts'	selectAllConflicts	'select all methods that occur in any change set')
		('File in selections' 	fileInSelections		'file in all selected entries')
		)! !
