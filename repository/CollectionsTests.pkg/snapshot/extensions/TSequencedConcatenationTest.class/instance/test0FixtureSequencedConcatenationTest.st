
!TSequencedConcatenationTest methodsFor: 'tests - fixture'!
test0FixtureSequencedConcatenationTest
	self 
		shouldnt: self empty
		raise: Exception.
	self assert: self empty isEmpty.
	self 
		shouldnt: self firstCollection
		raise: Exception.
	self 
		shouldnt: self secondCollection
		raise: Exception! !
