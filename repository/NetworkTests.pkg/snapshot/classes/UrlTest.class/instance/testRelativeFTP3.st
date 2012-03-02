
!UrlTest methodsFor: 'tests'!
testRelativeFTP3
	
	baseUrl := 'ftp://somewhere/some/dir/?query#fragment' asUrl.
	url := baseUrl newFromRelativeText: 'http:xyz'.

	self assert: url asString = 'http://xyz/'.! !
