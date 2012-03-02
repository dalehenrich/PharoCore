
!ScriptLoader methodsFor: 'pharo - updates'!
update14035
	"self new update14035"
	self withUpdateLog: '- Issue 4520:	Zinc update
	http://code.google.com/p/pharo/issues/detail?id=4520
	
ZnDefaultServerDelegate>>#echoRequest: added option to delay the response to /echo with a specified number of seconds, as in echo?delay=60

added ZnSingleThreadedServer>>#onRequestRespond: convenience method

implemented client side support for If-Modified-Since and Not Modified:
- added ZnRequest>>#setIfModifiedSince:
- refactored ZnMessage>>#readFrom to call #readEntityFrom:
- overwritten ZnResponse>>#readEntityFrom: to take special no content response into account
- extended ZnUtils class>>#httpDate: to accept any argument that understands #asTimeStamp
'.
	self loadTogether: self script300 merge: false.
	self flushCaches.
! !
