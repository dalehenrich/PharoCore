
!UrlTest methodsFor: 'tests'!
testRoundTripFILE
	"File URLs should round-trip OK. This test should ultimately be
	tested on all platforms."

	| fileName |
	fileName := FileDirectory default fullNameFor: 'xxx.st'.
	url := FileDirectory urlForFileNamed: fileName.
	self assert: (url pathForFile = fileName) description: 'fileName didn''t round-trip'.! !
