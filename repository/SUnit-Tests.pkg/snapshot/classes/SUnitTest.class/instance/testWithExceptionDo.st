
!SUnitTest methodsFor: 'testing'!
testWithExceptionDo

	self
		should: [self error: 'foo']
		raise: TestResult error
		withExceptionDo: [:exception |
			self assert: (exception description includesSubString: 'foo')
		]
			! !
