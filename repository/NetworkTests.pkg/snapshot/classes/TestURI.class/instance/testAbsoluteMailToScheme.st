
!TestURI methodsFor: 'parsing tests'!
testAbsoluteMailToScheme
	"self debug: #testAbsoluteMailToScheme"
	| uri |
	"[scheme:][//authority][path][?query][#fragment]
	where authority can be [user-info@]host[:port]"
	
	uri := URI fromString: 'mailto:somebody@somewhere.nowhere'.
	self assert: (uri scheme = 'mailto').
	self assert: (uri  schemeSpecificPart = 'somebody@somewhere.nowhere').
	self assert: (uri isAbsolute).
	self assert: (uri isOpaque).
	self deny: (uri isRelative)! !
