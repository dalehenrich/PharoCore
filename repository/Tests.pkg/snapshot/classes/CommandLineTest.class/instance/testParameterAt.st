
!CommandLineTest methodsFor: 'as yet unclassified'!
testParameterAt
	self assert: (self commandLine parameterAt: 1) = 'noOpt1'.
	self assert: (self commandLine parameterAt: 4) = '-option1'.
	self deny: (self commandLine parameterAt: 5) = 'foo'.
	self deny: (self commandLine parameterAt: 1) isNil.
	self assert: (self commandLine parameterAt: nil) isNil.! !
