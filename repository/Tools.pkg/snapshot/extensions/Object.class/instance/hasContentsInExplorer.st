
!Object methodsFor: '*Tools-Explorer'!
hasContentsInExplorer

	^self basicSize > 0 or: [self class allInstVarNames notEmpty]
! !