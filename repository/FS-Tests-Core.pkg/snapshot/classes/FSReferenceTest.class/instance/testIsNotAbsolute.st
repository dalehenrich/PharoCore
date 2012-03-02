
!FSReferenceTest methodsFor: 'tests'!
testIsNotAbsolute
	self deny: (filesystem * 'plonk') isAbsolute! !
