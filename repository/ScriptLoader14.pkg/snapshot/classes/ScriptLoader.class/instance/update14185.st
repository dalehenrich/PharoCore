
!ScriptLoader methodsFor: 'pharo - updates'!
update14185
	"self new update14185"
	self withUpdateLog: 'Issue 4885:	With SystemReporter, we do not need a menu entry for GC statistics
	http://code.google.com/p/pharo/issues/detail?id=4885
Issue 4884:	Move deprecated methods to *deprecated14
	http://code.google.com/p/pharo/issues/detail?id=4884
Issue 4882:	Keystroke on PluggableListMorph throws an error
	http://code.google.com/p/pharo/issues/detail?id=4882
Issue 4873:	 there continue to exist : AnObsoleteSHStyleSetting
	http://code.google.com/p/pharo/issues/detail?id=4873'.
	self loadTogether: self script448 merge: false.
	((SystemNavigation new obsoleteClasses first pointersToExcept: #()) first instVarAt: 6 put: nil).
.
	self flushCaches.
! !
