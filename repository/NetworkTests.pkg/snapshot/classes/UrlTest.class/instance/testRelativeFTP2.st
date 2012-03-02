
!UrlTest methodsFor: 'tests'!
testRelativeFTP2
	
	baseUrl := 'ftp://somewhere/some/dir/?query#fragment' asUrl.
	url := baseUrl newFromRelativeText: 'ftp:xyz'.


	self assert: url asString =  'ftp://somewhere/some/dir/xyz'.! !
