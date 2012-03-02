
!ScriptLoader methodsFor: 'pharo - updates'!
update14131
	"self new update14131"
	self withUpdateLog: 'Issue 4784:	LogoImageMorphTest are failing
	http://code.google.com/p/pharo/issues/detail?id=4784

Issue 4722:	Emergency evaluator broken
	http://code.google.com/p/pharo/issues/detail?id=4722'.
	self loadTogether: self script395 merge: false.
	self flushCaches.
! !
