
!SelectionMorph methodsFor: 'halos and balloon help'!
balloonHelpTextForHandle: aHandle
	aHandle eventHandler firstMouseSelector == #addOrRemoveItems:
		ifTrue: [^'Add items to, or remove them from, this selection.'].
	^ super balloonHelpTextForHandle: aHandle! !
