
!ScriptLoader methodsFor: 'pharo - updates'!
update14263
	"self new update14263"
	self withUpdateLog: 'Issue 3766:	Lets fix this one (which is not broken)
	http://code.google.com/p/pharo/issues/detail?id=3766
Issue 4688:	progress bar disappears on image save
	http://code.google.com/p/pharo/issues/detail?id=4688
Issue 4616:	ClassTest may let a Unclassified category after their execution
	http://code.google.com/p/pharo/issues/detail?id=4616
Issue 3806:	Duration>>hours is broken
	http://code.google.com/p/pharo/issues/detail?id=3806'.
	self loadTogether: self script526 merge: false.
	self flushCaches.
! !
