
!MorphicUIManager methodsFor: 'ui requests'!
currentWorld
	ActiveWorld ifNotNil: [^ActiveWorld].
	^World! !
