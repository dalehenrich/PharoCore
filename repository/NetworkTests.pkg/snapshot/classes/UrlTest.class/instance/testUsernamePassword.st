
!UrlTest methodsFor: 'tests'!
testUsernamePassword
	"basic case with a username+password specified"

	url := 'http://user:pword@someserver.blah:8000/root/index.html' asUrl.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port = 8000 ].
	self should: [ url path first = 'root' ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"basic case for a relative url"
	baseUrl := 'http://anotherserver.blah:9999/somedir/someotherdir/stuff/' asUrl.
	url := 'http://user:pword@someserver.blah:8000/root/index.html' asUrlRelativeTo: baseUrl.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port = 8000 ].
	self should: [ url path first = 'root' ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"a true relative test that should keep the username and password from the base URL"
	baseUrl := 'http://user:pword@someserver.blah:8000/root/index.html' asUrl.
	url := '/anotherdir/stuff/' asUrlRelativeTo: baseUrl.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port = 8000 ].
	self should: [ url path first = 'anotherdir' ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"just a username specified"
	url := 'http://user@someserver.blah:8000/root/index.html' asUrl.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port = 8000 ].
	self should: [ url path first = 'root' ].
	self should: [ url username = 'user' ].
	self should: [ url password isNil ].	"the port is not specified"
	url := 'http://user:pword@someserver.blah/root/index.html' asUrl.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port isNil ].
	self should: [ url path first = 'root' ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"neither a path nor a port is specified"
	url := 'http://user:pword@someserver.blah' asUrl.
	self should: [ url schemeName = 'http' ].
	self should: [ url authority = 'someserver.blah' ].
	self should: [ url port isNil ].
	self should: [ url username = 'user' ].
	self should: [ url password = 'pword' ].	"relative URL where the username+password should be forgotten"
	baseUrl := 'http://user:pword@someserver.blah' asUrl.
	url := 'http://anotherserver.blah' asUrlRelativeTo: baseUrl.
	self should: [ url username isNil ].
	self should: [ url password isNil ]! !
