
!FSFilesystemTest methodsFor: 'tests'!
testCopySourceDoesntExist
	self 
		should: [filesystem copy: 'plonk' to: 'griffle']
		raise: FSFileDoesNotExist! !
