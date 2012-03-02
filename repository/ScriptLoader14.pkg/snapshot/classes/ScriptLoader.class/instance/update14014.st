
!ScriptLoader methodsFor: 'pharo - updates'!
update14014
	"self new update14014"
	self withUpdateLog: 'Issue 4351:	Eliminate SimpleButtonMorph
	http://code.google.com/p/pharo/issues/detail?id=4351
Issue 4453:	Remove References to Utilities
	http://code.google.com/p/pharo/issues/detail?id=4453
Issue 4421:	PluggableStandardWindow should be removed
	http://code.google.com/p/pharo/issues/detail?id=4421
Issue 4422:	Remove PSToolBuilder and
	http://code.google.com/p/pharo/issues/detail?id=4422'.
	self loadTogether: self script279 merge: false.
	self flushCaches.
! !
