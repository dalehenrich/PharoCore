
!CommandLineTest methodsFor: 'as yet unclassified'!
testAllFileTyped
	self assert: (self commandLine allFilesTyped: #txt) = #('noOpt2.txt' 'opt12.txt').
	self assert: (self commandLine allFilesTyped: #foo) isNil.
	self assert: (self commandLine allFilesTyped: nil) isNil! !
