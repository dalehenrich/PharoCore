
!FalseTest methodsFor: 'tests'!
testOr

	self assert: (false or: ['alternativeBlock']) = 'alternativeBlock'.! !
