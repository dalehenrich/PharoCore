
!ScriptLoader methodsFor: 'pharo - updates'!
update14163
	"self new update14163"
	self withUpdateLog: 'Issue 4739:	Workspace>>isStylingActive
	http://code.google.com/p/pharo/issues/detail?id=4739
Issue 4852:	Strange name of class SHStyleElement
	http://code.google.com/p/pharo/issues/detail?id=4852'.
	self loadTogether: self script427 merge: false.
	self flushCaches.
! !
