
!ScriptLoader methodsFor: 'pharo - updates'!
update14323
	"self new update14323"
	self withUpdateLog: 'Issue 5239:	Add explicit entries for squeaksource / gemstone repos
	http://code.google.com/p/pharo/issues/detail?id=5239
Issue 5237:	as: LinkedList does not behave as expected
	http://code.google.com/p/pharo/issues/detail?id=5237
Issue 5266:	Behavior >> methodDict should answer empty method dict rather than nil
	http://code.google.com/p/pharo/issues/detail?id=5266'.
	self loadTogether: self script584 merge: false.
	self flushCaches.
! !
