
!CommandLineTest methodsFor: 'as yet unclassified'!
testHasFilesTyped
	self assert: (self commandLine hasFilesTyped: #txt).
	self deny: (self commandLine hasFilesTyped: #foo).
	self deny: (self commandLine hasFilesTyped: nil).! !
