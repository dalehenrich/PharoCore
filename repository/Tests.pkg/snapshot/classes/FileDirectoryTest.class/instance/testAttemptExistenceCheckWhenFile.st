
!FileDirectoryTest methodsFor: 'existence tests'!
testAttemptExistenceCheckWhenFile
	"How should a FileDirectory instance respond with an existent file name?"
	| directory testFile |
	[testFile := 'aTestFile'.
	FileDirectory default
				forceNewFileNamed: testFile.
	directory := FileDirectory default
				directoryNamed: testFile.
	self shouldnt: [directory exists]
		description: 'Files are not directories.'.]
		ensure: [ FileDirectory default deleteFileNamed: testFile ifAbsent: []]! !
