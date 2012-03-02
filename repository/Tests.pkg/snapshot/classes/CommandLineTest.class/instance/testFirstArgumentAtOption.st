
!CommandLineTest methodsFor: 'as yet unclassified'!
testFirstArgumentAtOption
	self assert: (self commandLine firstArgumentAtOption: #option1) = 'opt11'.
	self assert: (self commandLine firstArgumentAtOption: #option2) isNil.
	self assert: (self commandLine firstArgumentAtOption: #nil) isNil.! !
