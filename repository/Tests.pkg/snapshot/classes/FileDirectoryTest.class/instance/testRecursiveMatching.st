
!FileDirectoryTest methodsFor: 'existence tests'!
testRecursiveMatching
	| file matchingFiles dir |
	[(self assuredDirectory fileNamed: 'test.txt')
		nextPutAll: 'foo';
		close.
		
	file := self assuredDirectory oldFileOrNoneNamed: 'test.txt'.
	self assert: file notNil.
	dir := self assuredDirectory containingDirectory.
	self assert: (dir matchingEntries: '*.txt') isEmpty.
	matchingFiles := (dir matchingEntries: '**/*.txt').
	self assert: 1 equals: matchingFiles size.
	self assert: (matchingFiles first isKindOf: DirectoryEntry).
	self assert: 'test.txt' equals: matchingFiles first name.]
		ensure: [
			file ifNotNil: [file close].
			self assuredDirectory deleteFileNamed: 'test.txt' ifAbsent: nil]
	
! !
