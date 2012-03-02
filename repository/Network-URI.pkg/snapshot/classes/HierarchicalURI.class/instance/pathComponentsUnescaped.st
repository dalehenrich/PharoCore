
!HierarchicalURI methodsFor: 'accessing'!
pathComponentsUnescaped
	^(self path findTokens: $/) collect: [:e | e unescapePercents].! !
