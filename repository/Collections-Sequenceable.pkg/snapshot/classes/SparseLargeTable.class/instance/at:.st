
!SparseLargeTable methodsFor: 'accessing'!
at: index

	self pvtCheckIndex: index.
	^self noCheckAt: index.
! !
