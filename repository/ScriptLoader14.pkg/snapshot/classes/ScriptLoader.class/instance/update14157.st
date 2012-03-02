
!ScriptLoader methodsFor: 'pharo - updates'!
update14157
	"self new update14157"
	self withUpdateLog: 'Issue 4827:	Fix Obsolete Refs in ScriptLoader
	http://code.google.com/p/pharo/issues/detail?id=4827
Issue 4772:	Undeclared in BrowserEnvironmentWrapper	
	http://code.google.com/p/pharo/issues/detail?id=4772
Issue 4771:	Three tests for Finder are failing
	http://code.google.com/p/pharo/issues/detail?id=4771
Issue 4828:	Failing tests: #testCharacterBlockAfterReplacingAll
	http://code.google.com/p/pharo/issues/detail?id=4828'.
	self loadTogether: self script421 merge: false.
	self flushCaches.
! !
