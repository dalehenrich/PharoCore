
!ScriptLoader methodsFor: 'pharo - updates'!
update14357
	"self new update14357"
	self withUpdateLog: 'Issue 5383:	Merge all Compiler tests into CompilerTests package
	http://code.google.com/p/pharo/issues/detail?id=5383
	
Issue 5375:	Clean dead code in CharacterScanner a bit
	http://code.google.com/p/pharo/issues/detail?id=5375
	
Issue 5318:	DNU On PluggableListMorph
	http://code.google.com/p/pharo/issues/detail?id=5318
	
Issue 5374:	Remove old DOS font support
	http://code.google.com/p/pharo/issues/detail?id=5374
	
Issue 5373:	remove unused (undocumented) R2L code in MultiCharacterScanner and Fonts.
	http://code.google.com/p/pharo/issues/detail?id=5373'.
	self loadTogether: self script618 merge: false.
	self flushCaches.
! !
