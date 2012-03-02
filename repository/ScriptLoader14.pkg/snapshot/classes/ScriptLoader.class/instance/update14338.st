
!ScriptLoader methodsFor: 'pharo - updates'!
update14338
	"self new update14338"
	self withUpdateLog: '- Issue 3547:	Have a look at the new match: implementation. Thanks BernardoContreras.
	http://code.google.com/p/pharo/issues/detail?id=3547'.
	self loadTogether: self script599 merge: false.
	self flushCaches.
! !
