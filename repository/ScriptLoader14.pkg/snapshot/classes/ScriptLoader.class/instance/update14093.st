
!ScriptLoader methodsFor: 'pharo - updates'!
update14093
	"self new update14093"
	self withUpdateLog: 'Issue 4645:	use a bit more {} instead of Array with:
	http://code.google.com/p/pharo/issues/detail?id=4645
	
Issue 4644:	subclass of ReadStreamTest to test RWBinaryOrTextStreamTest
	http://code.google.com/p/pharo/issues/detail?id=4644
	
Issue 4634:	Tools menu build by code from Deprecated13
	http://code.google.com/p/pharo/issues/detail?id=4634
	
Issue 4627:	Remove deprecated from NullTextStyler
	http://code.google.com/p/pharo/issues/detail?id=4627'.
	self loadTogether: self script357 merge: false.
	self flushCaches.
! !
