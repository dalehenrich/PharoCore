
!CommandLineTest methodsFor: 'as yet unclassified'!
testAllArgumentsNoOption
	self assert: (self commandLine allArgumentsNoOption) = #('noOpt1' 'noOpt2.txt' 'noOpt3.avi').
	self assert: (self commandLine allArgumentsNoOption) = (self commandLine allArgumentsAtOption: #*)! !
