
!ScriptLoader methodsFor: 'pharo - updates'!
update14024
	"self new update14024"
	self withUpdateLog: 'Issue 4489:	Obsolete classes in 1.4 due to Theme rename
	http://code.google.com/p/pharo/issues/detail?id=4489
Issue 4487:	Set Theme back to Pharo Theme
	http://code.google.com/p/pharo/issues/detail?id=4487		'.
	self loadTogether: self script289 merge: false.
	
ScriptLoader new cleanUpForRelease.
PharoTheme beCurrent.
	self flushCaches.
! !
