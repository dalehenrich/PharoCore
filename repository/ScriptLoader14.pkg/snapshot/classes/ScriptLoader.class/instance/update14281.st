
!ScriptLoader methodsFor: 'pharo - updates'!
update14281
	"self new update14281"
	self withUpdateLog: '- Issue 2560:	Convenient methods from Grease for Strings. Thanks Sven van Caekenberghe. Part Two.
	http://code.google.com/p/pharo/issues/detail?id=2560'.
	self loadTogether: self script544 merge: false.
	self flushCaches.
! !
