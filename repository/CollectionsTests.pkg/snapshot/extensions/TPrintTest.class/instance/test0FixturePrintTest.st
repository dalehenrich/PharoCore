
!TPrintTest methodsFor: 'tests - fixture'!
test0FixturePrintTest

	self shouldnt: [self nonEmpty ] raise: Error.
	self deny: self nonEmpty  isEmpty.! !
