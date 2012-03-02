
!ScriptLoader methodsFor: 'pharo - updates'!
update14095
	"self new update14095"
	self withUpdateLog: 'Issue 4659:	Typo on Pragma class comment
	http://code.google.com/p/pharo/issues/detail?id=4659
Issue 4657:	cull: nice method comments
	http://code.google.com/p/pharo/issues/detail?id=4657
Issue 4637:	Method to shrink to PharoCore
	http://code.google.com/p/pharo/issues/detail?id=4637'.
	self loadTogether: self script359 merge: false.
	self flushCaches.
! !
