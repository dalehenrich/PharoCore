
!ScriptLoader methodsFor: 'pharo - updates'!
update14088
	"self new update14088"
	self withUpdateLog: 'Issue 4625:	Fix execution of code in Implementor/sender
	http://code.google.com/p/pharo/issues/detail?id=4625
Issue 4628:	Nuking ImageSegment (Part I)
	http://code.google.com/p/pharo/issues/detail?id=4628'.
	self loadTogether: self script353 merge: false.
	self flushCaches.
! !
