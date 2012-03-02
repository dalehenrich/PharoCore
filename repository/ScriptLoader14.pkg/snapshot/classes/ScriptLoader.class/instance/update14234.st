
!ScriptLoader methodsFor: 'pharo - updates'!
update14234
	"self new update14234"
	self withUpdateLog: 'Issue 5009:	Workspace method protocol clean-up
	http://code.google.com/p/pharo/issues/detail?id=5009
Issue 5007:	On TextEditorDialogWindow
	http://code.google.com/p/pharo/issues/detail?id=5007
Issue 4974:	better UUID comparison
	http://code.google.com/p/pharo/issues/detail?id=4974
Issue 5008:	FixDebuggerWhenSelectorIs>>
	http://code.google.com/p/pharo/issues/detail?id=5008'.
	self loadTogether: self script497 merge: false.
	self flushCaches.
! !
