
!TIterateTest methodsFor: 'tests - iterating'!
testCollectOnEmpty
	self assert: (self empty collect: [:e | self fail]) isEmpty! !
