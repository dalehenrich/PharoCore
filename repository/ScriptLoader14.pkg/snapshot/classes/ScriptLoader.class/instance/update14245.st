
!ScriptLoader methodsFor: 'pharo - updates'!
update14245
	"self new update14245"
	self withUpdateLog: 'Issue 5046:	SystemOrganizer>>default to be consistent with SystemNavigation
	http://code.google.com/p/pharo/issues/detail?id=5046

Issue 5041:	SystemNavigation search source strings case-sensitive
	http://code.google.com/p/pharo/issues/detail?id=5041'.
	self loadTogether: self script508 merge: false.
	self flushCaches.
! !
