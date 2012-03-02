
!ScriptLoader methodsFor: 'pharo - updates'!
update14099
	"self new update14099"
	self withUpdateLog: '- Issue 4660:	Safety measure in compiler.
	http://code.google.com/p/pharo/issues/detail?id=4660
	
- Issue 4665:	MessageNotUnderstood: PasteUpMorph>>findAMessageNamesWindow:
	http://code.google.com/p/pharo/issues/detail?id=4665
	
- Issue 4661:	Smalltalk tools transcript
	http://code.google.com/p/pharo/issues/detail?id=4661'.
	self loadTogether: self script363 merge: false.
	UIManager default world initializeDesktopCommandKeySelectors.
	self flushCaches.
! !
