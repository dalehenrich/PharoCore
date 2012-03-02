
!FileDirectoryTest methodsFor: 'existence tests'!
testOldFileOrNoneNamed

	| file |
	file := self assuredDirectory oldFileOrNoneNamed: 'test.txt'.
	[self assert: file isNil.
	
	"Reproduction of Mantis #1049"
	(self assuredDirectory fileNamed: 'test.txt')
		nextPutAll: 'foo';
		close.
		
	file := self assuredDirectory oldFileOrNoneNamed: 'test.txt'.
	self assert: file notNil]
		ensure: [
			file ifNotNil: [file close].
			self assuredDirectory deleteFileNamed: 'test.txt' ifAbsent: nil]
	
! !
