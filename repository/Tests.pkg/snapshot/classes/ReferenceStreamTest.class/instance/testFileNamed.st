
!ReferenceStreamTest methodsFor: 'testing'!
testFileNamed
	| testString file |
	testString := 'testString'.
	file := ReferenceStream fileNamed: (self name, 'test').
	file nextPut: testString.
	file close.
	file := ReferenceStream fileNamed: (self name, 'test').
	self assert: file next = testString.
	file close.! !
