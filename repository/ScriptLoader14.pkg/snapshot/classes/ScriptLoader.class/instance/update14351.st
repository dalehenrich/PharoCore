
!ScriptLoader methodsFor: 'pharo - updates'!
update14351
	"self new update14351"
	self withUpdateLog: 'Issue 5369:	Add a menu item for running startup script
	http://code.google.com/p/pharo/issues/detail?id=5369
Issue 5314:	Broken string morph shadow
	http://code.google.com/p/pharo/issues/detail?id=5314
Issue 5368:	Add methods in AbstractTool
	http://code.google.com/p/pharo/issues/detail?id=5368
Issue 5367:	Defensive Text could assert that runs are tailored with a good size
	http://code.google.com/p/pharo/issues/detail?id=5367'.
	self loadTogether: self script612 merge: false.
	self flushCaches.
! !
