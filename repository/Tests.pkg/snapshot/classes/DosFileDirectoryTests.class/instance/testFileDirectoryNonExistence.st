
!DosFileDirectoryTests methodsFor: 'as yet unclassified'!
testFileDirectoryNonExistence

	| inexistentFileName |
	
	"Hoping that you have 'C:' of course..."
	FileDirectory activeDirectoryClass == DosFileDirectory ifFalse:[^self].
	
	inexistentFileName := DosFileDirectory default nextNameFor: 'DosFileDirectoryTest' extension: 'temp'.
	
	"This test can fail if another process creates a file with the same name as inexistentFileName
	(the probability of that is very very remote)"

	self deny: (DosFileDirectory default fileOrDirectoryExists: inexistentFileName)! !
