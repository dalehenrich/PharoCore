
!TDictionaryEnumeratingTest methodsFor: 'tests - fixture'!
test0FixtureDictionaryEnumeratingTest

self shouldnt: [ self nonEmptyDict ] raise: Error.
self deny: self nonEmptyDict isEmpty.! !
