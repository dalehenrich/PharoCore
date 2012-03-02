
!ScriptLoader methodsFor: 'pharo - updates'!
update14319
	"self new update14319"
	self withUpdateLog: 'Issue 5258:	Another minor fix in Abstract Tool
	http://code.google.com/p/pharo/issues/detail?id=5258
Issue 5257:	Minor fix in Abstract Tool
	http://code.google.com/p/pharo/issues/detail?id=5257
Issue 5262:	PLuggableMultiColumnListMorph issue
	http://code.google.com/p/pharo/issues/detail?id=5262
Issue 5261:	Fix in PluggableIconListMorph
	http://code.google.com/p/pharo/issues/detail?id=5261'.
	self loadTogether: self script580 merge: false.
	self flushCaches.
! !
