
!SUnitExtensionsTest methodsFor: 'test'!
testShouldFix

	| testCase testResult  |
	
	testCase := self class selector: #shouldFixTest.
	testResult := testCase run.
	
	self assert: (testResult passed includes: testCase).
	self assert: testResult passed size=1.
	self assert: testResult failures isEmpty.
	self assert: testResult errors isEmpty.
	
	! !
