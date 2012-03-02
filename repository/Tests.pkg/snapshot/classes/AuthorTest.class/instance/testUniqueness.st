
!AuthorTest methodsFor: 'running'!
testUniqueness
	self should: [ Author new ] raise: Error.! !
