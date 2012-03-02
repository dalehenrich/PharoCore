
!ScriptLoader methodsFor: 'pharo - updates'!
update14021
	"self new update14021"
	self withUpdateLog: 'Issue 4474:	DNU when displaying search results in Comments
	http://code.google.com/p/pharo/issues/detail?id=4474
Issue 4473:	About HTTP proxies, settings and MacOS
	http://code.google.com/p/pharo/issues/detail?id=4473'.
	self loadTogether: self script286 merge: false.
	self flushCaches.
! !
