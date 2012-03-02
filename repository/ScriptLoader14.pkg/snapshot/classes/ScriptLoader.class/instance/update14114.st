
!ScriptLoader methodsFor: 'pharo - updates'!
update14114
	"self new update14114"
	self cleanRepositories.
	self withUpdateLog: '- Issue 4664:	SystemAnnouncement is ready for integration.
	http://code.google.com/p/pharo/issues/detail?id=4664
	
- Issue 4618:	Integration of RBEngine
	http://code.google.com/p/pharo/issues/detail?id=4618'.
	self loadTogether: self script378 merge: false.
	self cleanRepositories.
	self flushCaches.
! !
