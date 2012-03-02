
!MorphicUIManager methodsFor: 'ui requests'!
fileExistsDefaultAction: anException

	^ anException fileClass fileExistsUserHandling: anException fileName! !
