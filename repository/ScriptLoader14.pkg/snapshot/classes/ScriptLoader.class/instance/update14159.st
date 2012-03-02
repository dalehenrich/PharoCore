
!ScriptLoader methodsFor: 'pharo - updates'!
update14159
	"self new update14159"
	self withUpdateLog: 'Issue 3527:	Generator
	http://code.google.com/p/pharo/issues/detail?id=3527
Issue 4791:	Add a class to have a better holding of IconicList items
	http://code.google.com/p/pharo/issues/detail?id=4791
Issue 4841:	can t forbid the styling of a text view with #styled: + need for commented examples
	http://code.google.com/p/pharo/issues/detail?id=4841'.
	self loadTogether: self script423 merge: false.
	self flushCaches.
! !
