
!RxMatcherTest methodsFor: 'testing-henry'!
testHenry127
	self runRegex: #('[ -~ -~ -~ -~]*' 'abc' true (1 'abc'))
	! !
