
!TPureBehavior methodsFor: 'adding/removing methods'!
addSelectorSilently: selector withMethod: compiledMethod
	self methodDictAddSelectorSilently: selector withMethod: compiledMethod.
	self registerLocalSelector: selector! !
