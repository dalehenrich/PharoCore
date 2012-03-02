
!SetTest methodsFor: 'sunit original tests'!
testIllegal
	self should: [empty at: 5] raise: TestResult error.
	self should: [empty at: 5 put: #abc] raise: TestResult error.
			! !
