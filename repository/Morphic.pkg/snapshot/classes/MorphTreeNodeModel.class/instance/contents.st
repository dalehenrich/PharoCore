
!MorphTreeNodeModel methodsFor: 'accessing'!
contents
	^ self childrenItems collect: [:ci | self childNodeFromItem: ci ]! !
