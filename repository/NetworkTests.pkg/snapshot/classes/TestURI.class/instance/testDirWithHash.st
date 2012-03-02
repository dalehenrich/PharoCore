
!TestURI methodsFor: 'tests query'!
testDirWithHash
	"Tests proper escaping of directories with hash mark"
	"self debug: #testDirWithHash"
	| uriDir origPath origDir dirURI |
	origPath := FileDirectory default pathName, '#123'.
	origDir := FileDirectory on: origPath.
	self assert: origDir pathName = origPath.
	dirURI := origDir uri.
	uriDir := FileDirectory uri: dirURI.
	self assert: origDir fullName = uriDir fullName! !
