
!SystemProgressMorph methodsFor: 'labelling'!
setLabel: shortDescription at: slot

	(labels at: slot) contents: shortDescription.
	self recenter! !
