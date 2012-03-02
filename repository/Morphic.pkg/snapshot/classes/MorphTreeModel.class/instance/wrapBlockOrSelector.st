
!MorphTreeModel methodsFor: 'accessing'!
wrapBlockOrSelector

	^ wrapBlockOrSelector ifNil: [wrapBlockOrSelector := #printString]! !
