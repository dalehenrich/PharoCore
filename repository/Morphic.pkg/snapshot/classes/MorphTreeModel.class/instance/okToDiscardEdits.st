
!MorphTreeModel methodsFor: 'accessing'!
okToDiscardEdits 
	^ self canDiscardEdits  or: [self promptForCancel]! !
