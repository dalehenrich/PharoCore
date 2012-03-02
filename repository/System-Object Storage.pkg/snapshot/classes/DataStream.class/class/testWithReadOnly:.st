
!DataStream class methodsFor: 'tests'!
testWithReadOnly: anObject
	"As a test of DataStream/ReferenceStream, write out anObject and read it back."
	"DataStream testWithReadOnly: 'hi'"
	"ReferenceStream testWithReadOnly: 'hi'"
	| file result |
	file := self fileNamed: (self name, ' test').
	file nextPut: anObject.
	file close.

	file := self readOnlyFileNamed: (self name, ' test').
	result := file next.
	file close.
	^ result! !
