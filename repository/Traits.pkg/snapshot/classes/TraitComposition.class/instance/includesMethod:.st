
!TraitComposition methodsFor: 'testing'!
includesMethod: aSelector
	^(self methodDescriptionForSelector: aSelector) isEmpty not! !
