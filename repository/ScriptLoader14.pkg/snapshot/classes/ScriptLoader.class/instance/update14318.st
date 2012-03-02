
!ScriptLoader methodsFor: 'pharo - updates'!
update14318
	"self new update14318"
	self withUpdateLog: 'Issue 5260:	Add a method on Browser class
	http://code.google.com/p/pharo/issues/detail?id=5260
Issue 5259:	Minor Fix in PLuggableListMorph
	http://code.google.com/p/pharo/issues/detail?id=5259'.
	self loadTogether: self script579 merge: false.
	self flushCaches.
! !
