
!CodeLoader methodsFor: 'private'!
createRequestFor: name in: aLoader
	"Create a URL request for the given string, which can be cached locally."
	| request |
	request := UrlCodeFileLoader httpRequestClass for: name in: aLoader.
	aLoader addRequest: request. "fetch from URL"
	^request! !
