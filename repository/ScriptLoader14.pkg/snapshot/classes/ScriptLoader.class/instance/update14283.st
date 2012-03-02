
!ScriptLoader methodsFor: 'pharo - updates'!
update14283
	"self new update14283"
	self withUpdateLog: '- Issue 2560:	Convenient methods from Grease for Strings. Part Five. 
	http://code.google.com/p/pharo/issues/detail?id=2560'.
	self loadTogether: self script546 merge: false.
	self flushCaches.
! !
