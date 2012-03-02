
!UrlTest methodsFor: 'tests'!
testRelativeFTP
	
	baseUrl := 'ftp://somewhere/some/dir/?query#fragment' asUrl.
	url := baseUrl newFromRelativeText: 'ftp://a.b'.

	self assert: url asString =  'ftp://a.b/'.! !
