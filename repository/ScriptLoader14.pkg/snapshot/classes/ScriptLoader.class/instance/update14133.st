
!ScriptLoader methodsFor: 'pharo - updates'!
update14133
	"self new update14133"
	self withUpdateLog: ' Issue 4779:	Ring - RPackage
	http://code.google.com/p/pharo/issues/detail?id=4779'.
	self loadTogether: self script397 merge: false.
	self flushCaches.
! !
