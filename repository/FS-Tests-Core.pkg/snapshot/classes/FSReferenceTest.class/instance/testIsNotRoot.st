
!FSReferenceTest methodsFor: 'tests'!
testIsNotRoot
	self deny: (filesystem / 'plonk') isRoot! !
