
!RxMatcherTest methodsFor: 'testing-henry'!
testHenry126
	self runRegex: #('[ -~ -~ -~]*' 'abc' true (1 'abc'))
	! !
