
!LargeNegativeInteger methodsFor: 'arithmetic'!
negated
	^ self copyto: (LargePositiveInteger new: self digitLength)! !
