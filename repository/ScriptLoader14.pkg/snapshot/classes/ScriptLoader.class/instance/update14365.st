
!ScriptLoader methodsFor: 'pharo - updates'!
update14365
	"self new update14365"
	"BlockContext becomeUncompact."
.
	self withUpdateLog: 'Issue 5413:	Fix in LazyListMorph
	http://code.google.com/p/pharo/issues/detail?id=5413
	
Issue 5408:	remove all remaining references to BlockContext and #blockCopy:
	http://code.google.com/p/pharo/issues/detail?id=5408
	
Issue 5156:	ClassBuilder allows the creation of invalid instance-, class instance-, class-, and pool-variables
	http://code.google.com/p/pharo/issues/detail?id=5156
	
Issue 2255:	fix comment and use of #flushCache
	http://code.google.com/p/pharo/issues/detail?id=2255
	
Issue 5412:	Fix in AbstractTool again ;) )
	http://code.google.com/p/pharo/issues/detail?id=5412'.
	self loadTogether: self script626 merge: false.
	self flushCaches.
! !
