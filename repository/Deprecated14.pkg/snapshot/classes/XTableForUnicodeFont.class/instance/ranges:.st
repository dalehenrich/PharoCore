
!XTableForUnicodeFont methodsFor: 'as yet unclassified'!
ranges: pairArray

	self  deprecated: 'dead code?' on: '24 February 2012' in: 'Pharo1.4'.
	xTables := Array new: 0.
	pairArray do: [:range |
		xTables := xTables copyWith: (Array new: range last - range first + 1 withAll: 0).
	].
	ranges := pairArray.
! !
