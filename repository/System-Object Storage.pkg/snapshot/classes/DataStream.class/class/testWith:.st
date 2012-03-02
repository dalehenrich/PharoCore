
!DataStream class methodsFor: 'tests'!
testWith: anObject
	"As a test of DataStream/ReferenceStream, write out anObject and read it back."
	"DataStream testWith: 'hi'"
	"ReferenceStream testWith: 'hi'"
	
	"should be turned into an SUnit Tests"
	| file result |
	file := self fileNamed: (self name, ' test').
	file nextPut: anObject.
	file close.

	file := self fileNamed: (self name, ' test').
	result := file next.
	file close.
	^ result! !
