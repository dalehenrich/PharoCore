
!DateTest methodsFor: 'testing'!
testStoreOn
	| cs rw |
	cs := '''23 January 2004'' asDate' readStream.
	rw := ReadWriteStream on: ''.
	aDate storeOn: rw.
	self assert: rw contents = cs contents! !
