
!ScriptLoader methodsFor: 'pharo - updates'!
update14186
	"self new update14186"
	self withUpdateLog: 'Issue 4881:	New test for Shout
	http://code.google.com/p/pharo/issues/detail?id=4881
Issue 4805:	MNU: receiver of fontOfPointSize: is nil
	http://code.google.com/p/pharo/issues/detail?id=4805'.
	self loadTogether: self script449 merge: false.
	self flushCaches.
! !
