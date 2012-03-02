
!DataStreamTest methodsFor: 'testing'!
testFileNamed
	| testString file |
	testString := 'testString'.
	file := DataStream fileNamed: (self name, 'test').
	file nextPut: testString.
	file close.
	file := DataStream fileNamed: (self name, 'test').
	self assert: file next = testString.
	file close.! !
