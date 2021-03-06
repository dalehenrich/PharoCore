
!TOccurrencesTest methodsFor: 'tests - fixture'!
test0FixtureOccurrencesTest
	| tmp |
	self shouldnt: [self empty ]raise: Error.
	self assert: self empty isEmpty.

	self shouldnt: [ self collectionWithoutEqualElements ] raise: Error.
	self deny: self collectionWithoutEqualElements isEmpty.
	
	tmp := OrderedCollection new.
	self collectionWithoutEqualElements do: [ 
		:each |
		self deny: (tmp includes: each).
		tmp add: each.
		 ].
	
	
	self shouldnt: [ self elementNotInForOccurrences ] raise: Error.
	self deny: (self collectionWithoutEqualElements includes: self elementNotInForOccurrences)! !
