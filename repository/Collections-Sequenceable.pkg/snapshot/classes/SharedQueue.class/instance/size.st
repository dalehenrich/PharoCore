
!SharedQueue methodsFor: 'size'!
size
	^monitor critical: [ items size ]! !
