
!TCopyPartOfSequenceable methodsFor: 'tests - fixture'!
test0FixtureCopyPartOfSequenceableTest
	
	self shouldnt: [self collectionWithoutEqualsElements ] raise: Error.
	self collectionWithoutEqualsElements do:
		[:each | self assert: (self collectionWithoutEqualsElements occurrencesOf: each)=1].
	
	self shouldnt: [self indexInForCollectionWithoutDuplicates ] raise: Error.
	self assert: self indexInForCollectionWithoutDuplicates >0 & self indexInForCollectionWithoutDuplicates < self collectionWithoutEqualsElements size.
	
	self shouldnt: [self empty] raise: Error.
	self assert: self empty isEmpty .! !
