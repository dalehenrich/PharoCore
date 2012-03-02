
!CommandLineTest methodsFor: 'as yet unclassified'!
testAllArgumentAtOption
	"self debug: #testAllArgumentAtOption"
	
	self assert: (self commandLine allArgumentsAtOption: #option1) = #('opt11' 'opt12.txt' 'opt13.avi').
	self assert: (self commandLine allArgumentsAtOption: #option2) isNil.
	self assert: (self commandLine allArgumentsAtOption: #foo) isNil.
	self assert: (self commandLine allArgumentsAtOption: nil) isNil.! !
