
!ScriptLoader methodsFor: 'pharo - updates'!
update14199
	"self new update14199"
	self withUpdateLog: '- Issue 4916:	Fixing FlatBrowser after double list introduction. 
	http://code.google.com/p/pharo/issues/detail?id=4916
	'.
	self loadTogether: self script462 merge: false.
	self flushCaches.
! !
