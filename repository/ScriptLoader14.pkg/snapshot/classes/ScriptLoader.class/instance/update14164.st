
!ScriptLoader methodsFor: 'pharo - updates'!
update14164
	"self new update14164"
	self withUpdateLog: 'Issue 4770:	Change the way changes are displayed into the changes browser of Monticello
	http://code.google.com/p/pharo/issues/detail?id=4770
Issue 4493:	remove BDFFontReader and friends
	http://code.google.com/p/pharo/issues/detail?id=4493
Issue 4624:	Shout Setting does not show up in the Setting Browser.
	http://code.google.com/p/pharo/issues/detail?id=4624
Issue 4854:	must enforce class name checking and check class name when renaming of copying a class
	http://code.google.com/p/pharo/issues/detail?id=4854'.
	self loadTogether: self script428 merge: false.
	self flushCaches.
! !
