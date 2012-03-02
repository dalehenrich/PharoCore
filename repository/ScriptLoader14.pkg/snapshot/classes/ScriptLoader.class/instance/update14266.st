
!ScriptLoader methodsFor: 'pharo - updates'!
update14266
	"self new update14266"
	self withUpdateLog: '- Issue 5117:	MNU: Transcripter class>>open. Thanks vpnbecmann.
	http://code.google.com/p/pharo/issues/detail?id=5117
	
- Issue 5122:	ZnUpdate-Dec-20. Thanks sven van caekenberghe.
	http://code.google.com/p/pharo/issues/detail?id=5120'.
	self loadTogether: self script529 merge: false.
	ZnMimeType initialize.
	self flushCaches.
! !
