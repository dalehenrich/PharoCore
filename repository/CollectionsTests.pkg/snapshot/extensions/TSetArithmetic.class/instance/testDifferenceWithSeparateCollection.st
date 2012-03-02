
!TSetArithmetic methodsFor: 'tests - set arithmetic'!
testDifferenceWithSeparateCollection
	"Answer the set theoretic difference of two collections."
	"self debug: #testDifferenceWithSeparateCollection"
	| res separateCol |
	separateCol := self collectionClass with: self anotherElementOrAssociationNotIn.
	res := self collection difference: separateCol.
	self deny: (res includes: self anotherElementOrAssociationNotIn).
	self assert: res = self collection.
	res := separateCol difference: self collection.
	self deny: (res includes: self collection anyOne).
	self assert: res = separateCol! !
