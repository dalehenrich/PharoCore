
!ScriptLoader methodsFor: 'pharo - updates'!
update14347
	"self new update14347"
	self withUpdateLog: 'Issue 5348:	simplify #cleanUpForRelease a little
	http://code.google.com/p/pharo/issues/detail?id=5348
Issue 5347:	StartupPreferences has no repository attached
	http://code.google.com/p/pharo/issues/detail?id=5347
Issue 5346:	FlatMessageListBrowser send error when a menu action is selected when no item is selected
	http://code.google.com/p/pharo/issues/detail?id=5346'.
	self loadTogether: self script608 merge: false.
		
ScriptLoader new addHomeRepositoryToAllPackages.
ScriptLoader new cleanUpForRelease.
	self flushCaches.
! !
