
!TCopySequenceableWithReplacementForSorted methodsFor: 'tests - fixture'!
test0FixtureCopyWithReplacementForSorted

self shouldnt: [self collectionOfSize5 ] raise: Error.
self assert: self collectionOfSize5 size = 5.

self shouldnt: [self replacementCollection ] raise: Error.
self deny: self replacementCollection isEmpty.

self shouldnt: [self empty] raise: Error.
self assert: self empty isEmpty.! !
