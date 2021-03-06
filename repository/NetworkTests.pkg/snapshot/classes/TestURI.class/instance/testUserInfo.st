
!TestURI methodsFor: 'tests user info'!
testUserInfo
	"self debug: #testUserInfo"
	
	| uri uriString |
	"[scheme:][//authority][path][?query][#fragment]
	where authority can be [user-info@]host[:port]"

	uriString := 'scheme://userinfo@host/'.
	uri :=  URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri authority userInfo = 'userinfo').! !
