
!ZipCrcTests methodsFor: 'tests'!
testMissingZipCrc
	"See that the lack of a CRC does not raise an error"
	| reader writer bytes readBytes |
	writer := ZipWriteStream on: String new.
	writer nextPutAll: 'Hello World'.
	writer close.

	bytes := writer encodedStream contents.

	reader := ZipReadStream on: bytes.
	self shouldnt:[readBytes := reader upToEnd] raise: CRCError.
	self assert: readBytes = 'Hello World'.

	reader := ZipReadStream on: bytes.
	self shouldnt:[reader contents] raise: CRCError.

	reader := ZipReadStream on: bytes.
	self shouldnt:[reader next: 100] raise: CRCError.
! !
