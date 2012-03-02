
!SharedQueue methodsFor: 'size'!
isEmpty
	^monitor critical: [ items isEmpty ]! !
