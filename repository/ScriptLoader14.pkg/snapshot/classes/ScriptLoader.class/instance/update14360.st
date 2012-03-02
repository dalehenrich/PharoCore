
!ScriptLoader methodsFor: 'pharo - updates'!
update14360
	"self new update14360"
	self withUpdateLog: '-  Issue 5392:	Add some announcement to Metacello. Thanks Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=5392
	
- Issue 5398:	Clean up #isBlueBookCompiled.Thanks Marcus Denker.
	http://code.google.com/p/pharo/issues/detail?id=5398
	
-  Issue 5397:	Cleanup Multilingual Fonts more... Thanks Marcus Denker.
	http://code.google.com/p/pharo/issues/detail?id=5397
	
- Issue 5391:	Clean Font Donwloading. Thanks Marcus Denker.
	http://code.google.com/p/pharo/issues/detail?id=5391

-  Issue 5388:	Clean BlockNode old style code. Thanks Marcus Denker.
	http://code.google.com/p/pharo/issues/detail?id=5388
'.
	self loadTogether: self script621 merge: false.
	self flushCaches.
! !
