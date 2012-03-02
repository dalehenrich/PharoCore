
!FSPathTest methodsFor: 'tests'!
testIsNotAbsolute
	self deny: (FSPath * 'plonk') isAbsolute! !
