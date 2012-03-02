
!ScriptLoader methodsFor: 'pharo - updates'!
update14339
	"self new update14339"
	self withUpdateLog: 'Issue 5323:	PluggableListMorph problem when multiple selection and navigate with keyboard
	http://code.google.com/p/pharo/issues/detail?id=5323
Issue 5324:	TestRunner red square of death
	http://code.google.com/p/pharo/issues/detail?id=5324'.
	self loadTogether: self script600 merge: false.
	self flushCaches.
! !
