
!TCopyPartOfSequenceable methodsFor: 'tests - copying part of sequenceable'!
testCopyUpToEmpty
	| result |
	result := self empty copyUpTo: self collectionWithoutEqualsElements first.
	self assert: result isEmpty.
	! !
