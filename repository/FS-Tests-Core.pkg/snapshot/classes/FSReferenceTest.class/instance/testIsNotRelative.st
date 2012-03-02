
!FSReferenceTest methodsFor: 'tests'!
testIsNotRelative
	self deny: (filesystem / 'plonk') isRelative! !
