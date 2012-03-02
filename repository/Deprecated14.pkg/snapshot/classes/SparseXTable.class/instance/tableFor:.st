
!SparseXTable methodsFor: 'accessing'!
tableFor: code

	| div |
	self  deprecated: 'dead code?' on: '21 February 2012' in: 'Pharo1.4'.
	div := code // 65536.
	^xTables at: div ifAbsentPut:
		[Array new: 65536 withAll: 0].
! !
