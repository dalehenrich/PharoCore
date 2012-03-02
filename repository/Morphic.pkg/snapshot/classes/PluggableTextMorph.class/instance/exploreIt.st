
!PluggableTextMorph methodsFor: 'menu commands'!
exploreIt
	self handleEdit:
		[textMorph editor evaluateSelectionAndDo: [:result | result explore]].! !
