
!TestURI methodsFor: 'tests query'!
testOpaqueQuery
	"An opaque URI cannot have a query, because the opaque part may includes any $?."

	| uri uriString |
	"An opaque URI is an absolute URI whose scheme-specific part does not begin with a slash character ('/')"
	"[scheme:]scheme-specific-part[#fragment]"
	
	uriString := 'scheme:opaque?query'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self assert: (uri isOpaque).
	self should: [ uri query] raise: Error.
! !
