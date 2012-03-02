
!ZipArchiveTest methodsFor: 'tests'!
testCreateWithRelativeNames
	"Test creating a zip with a relative tree of files, so that the tree will
	be created whereever the ."
	| subdir zip |
	subdir := FileDirectory default / '_test-zip-dir'.
	self deny: subdir exists.
	subdir assureExistence.
	[ subdir
		fileNamed: '_test-zip-file'
		do: [ : stream | stream nextPutAll: 'file contents' ].
	zip := ZipArchive new.
	zip
		addDirectory: subdir fullName
		as: subdir localName.
	zip	
		addFile: (subdir fullNameFor: '_test-zip-file')
		as: '_test-zip-dir' , FileDirectory slash , '_test-zip-file'.
	zip writeToFileNamed: (FileDirectory default fullNameFor: '_test.zip') ] 
	ensure: [
		zip close.	
		subdir ifNotNil: [ subdir recursiveDelete ].
		FileDirectory default deleteFileNamed: '_test.zip' ]
! !
