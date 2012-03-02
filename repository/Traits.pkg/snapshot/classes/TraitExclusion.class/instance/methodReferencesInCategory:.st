
!TraitExclusion methodsFor: 'accessing'!
methodReferencesInCategory: aCategoryName
	^(self organization listAtCategoryNamed: aCategoryName)
		collect: [:ea | RGMethodDefinition
						realClass: (self isMeta ifTrue:[ self theMetaClass ] ifFalse:[ self theNonMetaClass ])
						selector: ea ]! !
