
!MCAncestry methodsFor: 'ancestry'!
hasAncestor: aVersionInfo
	^ self
		hasAncestor: aVersionInfo
		alreadySeen: OrderedCollection new! !
