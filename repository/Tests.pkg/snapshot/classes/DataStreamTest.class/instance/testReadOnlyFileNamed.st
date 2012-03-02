
!DataStreamTest methodsFor: 'testing'!
testReadOnlyFileNamed
	| testString file |
	testString := 'testString'.
	file := DataStream fileNamed: (self name, 'test').
	file nextPut: testString.
	file close.
	file := DataStream readOnlyFileNamed: (self name, 'test').
	self assert: file next = testString.
	file close.
	! !
