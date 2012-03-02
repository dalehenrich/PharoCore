
!ScriptLoader methodsFor: 'pharo - updates'!
update14013
	"self new update14013"
	self withUpdateLog: 'Issue 3772:	taskbar doesnt adapt to resized window
	http://code.google.com/p/pharo/issues/detail?id=3772
Issue 4432:	Tweak to browser class list border
	http://code.google.com/p/pharo/issues/detail?id=4432
Issue 4450:	TimeProfileBrowser broken in Pharo OneClick 1.3, PharoCore1.3, Pharo 1.4a
	http://code.google.com/p/pharo/issues/detail?id=4450
Issue 4446:	 latestSource:location: and latestVersionOf:location:
	http://code.google.com/p/pharo/issues/detail?id=4446
Issue 4435:	initializersEnabled
	http://code.google.com/p/pharo/issues/detail?id=4435
'.
	self loadTogether: self script278 merge: false.
	self flushCaches.
! !
