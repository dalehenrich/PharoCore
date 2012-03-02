
!TAssertable methodsFor: 'asserting'!
assert: expected equals: actual
	^ self
		assert: (expected = actual)
		description: (self comparingStringBetween: expected and: actual)
! !
