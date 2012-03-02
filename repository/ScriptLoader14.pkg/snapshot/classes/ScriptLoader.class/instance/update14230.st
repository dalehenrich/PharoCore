
!ScriptLoader methodsFor: 'pharo - updates'!
update14230
	"self new update14230"
	self withUpdateLog: '- Issue 4943:	Failing Test: SelfEvaluatingObjectTest. Thanks Nicolas Cellier. 
	http://code.google.com/p/pharo/issues/detail?id=4943
	
- Issue 3348:	use #shouldBePrintedAsLiteral instead of #isLiteral when printing or storing characters and arrays. Thanks vonbecmann and levente. 
	http://code.google.com/p/pharo/issues/detail?id=3348'.
	self loadTogether: self script493 merge: false.
	self flushCaches.
! !
