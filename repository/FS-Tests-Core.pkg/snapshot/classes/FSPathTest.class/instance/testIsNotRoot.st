
!FSPathTest methodsFor: 'tests'!
testIsNotRoot
	self deny: (FSPath / 'plonk') isRoot! !
