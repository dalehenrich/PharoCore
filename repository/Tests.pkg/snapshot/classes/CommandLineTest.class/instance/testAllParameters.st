
!CommandLineTest methodsFor: 'as yet unclassified'!
testAllParameters
	self assert: (self commandLine allParameters = self currentParameters)! !
