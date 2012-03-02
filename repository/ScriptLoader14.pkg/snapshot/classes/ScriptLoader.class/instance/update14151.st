
!ScriptLoader methodsFor: 'pharo - updates'!
update14151
	"self new update14151"
	self withUpdateLog: '- Issue 4819:	Fix MessageList>>#example. Thanks benjamin van ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4819
- Issue 4817:	New Widget: Ticking list and widget.Thanks benjamin van ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4817
- Issue 4818:	Fix for AbstractTool. Thanks benjamin van ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4818
- Issue 4821:	Fixing changedMessageList to adapt to MessageList use (vs MessageSet R.I.P.). Thanks Veronica Uquillas-Gomez.
	http://code.google.com/p/pharo/issues/detail?id=4821'.
	self loadTogether: self script415 merge: false.
	self flushCaches.
! !
