
!FSCollectVisitor methodsFor: 'visiting'!
visitReference: anEntry
	out nextPut: (block value: anEntry)! !
