
!FSReadStreamTest methodsFor: 'tests'!
testAtEnd
	self contents: #().
	self assert: stream atEnd! !
