
!ScriptLoader methodsFor: 'pharo - updates'!
update14113
	"self new update14113"
	self withUpdateLog: '- 
Issue 4724:	polymorph fixes. Thanks Gary Chambers.
	http://code.google.com/p/pharo/issues/detail?id=4724'.
	self loadTogether: self script377 merge: false.
	self flushCaches.
! !
