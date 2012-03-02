
!FileDirectoryTest methodsFor: 'create/delete tests'!
testDeleteDirectory
	"Test deletion of a directory"
	
	| aContainingDirectory preTestItems |
	aContainingDirectory := self directory containingDirectory.
	preTestItems := aContainingDirectory fileAndDirectoryNames.
	
	self assert: self assuredDirectory exists.
	aContainingDirectory deleteDirectory: self directoryName.

	self shouldnt: 
		[aContainingDirectory directoryNames 
			includes: self directoryName ]
		description: 'Should successfully delete directory.'.
	self should: 
		[preTestItems = aContainingDirectory fileAndDirectoryNames]
		description: 'Should only delete the indicated directory.'.

	
	! !
