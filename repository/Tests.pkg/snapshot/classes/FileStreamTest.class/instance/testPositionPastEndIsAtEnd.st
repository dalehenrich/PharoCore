
!FileStreamTest methodsFor: 'testing'!
testPositionPastEndIsAtEnd
	"Tests that a file positioned after its end responds true to #atEnd"
	"self debug: #testPositionPastEndIsAtEnd"
	| filename file |
	filename := 'filestream.tst'.
	file := StandardFileStream forceNewFileNamed: filename.
	[ file position: 1000.
	self assert: file atEnd.] ensure:
		[file close.
		FileDirectory default deleteFileNamed: filename ifAbsent:[]]! !
