
!FSPathTest methodsFor: 'tests'!
testIsNotRelative
	self deny: (FSPath / 'plonk') isRelative! !
