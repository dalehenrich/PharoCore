
!TStructuralEqualityTest methodsFor: 'tests - fixture'!
test0TStructuralEqualityTest
	self shouldnt: [self empty] raise: Error.
	self shouldnt: [self nonEmpty] raise: Error.
	self assert: self empty isEmpty.
	self deny: self nonEmpty isEmpty.! !
