
!RxsCharSet methodsFor: 'accessing'!
hasPredicates

	^elements contains: [:some | some isEnumerable not]! !
