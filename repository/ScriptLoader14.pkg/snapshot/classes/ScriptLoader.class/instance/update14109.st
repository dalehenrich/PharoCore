
!ScriptLoader methodsFor: 'pharo - updates'!
update14109
	"self new update14109"
	self withUpdateLog: 'Issue 4678:	AbstractTool modified again :)
	http://code.google.com/p/pharo/issues/detail?id=4678
Issue 4430:	When copying a class, do not copy the methods it obtains from Traits
	http://code.google.com/p/pharo/issues/detail?id=4430
	'.
	self loadTogether: self script373 merge: false.
	self flushCaches.
! !
