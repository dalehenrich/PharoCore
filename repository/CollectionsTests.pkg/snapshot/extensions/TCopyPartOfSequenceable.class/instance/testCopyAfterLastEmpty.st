
!TCopyPartOfSequenceable methodsFor: 'tests - copying part of sequenceable'!
testCopyAfterLastEmpty
	| result |
	result := self empty copyAfterLast: self collectionWithoutEqualsElements first.
	self assert: result isEmpty.! !
