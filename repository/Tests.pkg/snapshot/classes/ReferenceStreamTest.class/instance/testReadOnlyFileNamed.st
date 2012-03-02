
!ReferenceStreamTest methodsFor: 'testing'!
testReadOnlyFileNamed
	| testString file |
	testString := 'testString'.
	file := ReferenceStream fileNamed: (self name, 'test').
	file nextPut: testString.
	file close.
	file := ReferenceStream readOnlyFileNamed: (self name, 'test').
	self assert: file next = testString.
	file close.
	! !
