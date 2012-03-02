
!ScriptLoader methodsFor: 'pharo - updates'!
update14162
	"self new update14162"
	self withUpdateLog: 'Issue 4836:	Reference to PluggableListMorphOfMany
	http://code.google.com/p/pharo/issues/detail?id=4836
Issue 4835:	Undeclared ref to TextStyleFontSelectorDialogWindow
	http://code.google.com/p/pharo/issues/detail?id=4835
Issue 4853:	System update morphic notifier should not be shouted
	http://code.google.com/p/pharo/issues/detail?id=4853'.
	self loadTogether: self script426 merge: false.
	self flushCaches.
! !
