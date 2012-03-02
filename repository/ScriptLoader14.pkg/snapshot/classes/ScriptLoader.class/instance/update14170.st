
!ScriptLoader methodsFor: 'pharo - updates'!
update14170
	"self new update14170"
	self withUpdateLog: 'Issue 3236:	Cuis DateAndTime Enhancement (Part2)
	http://code.google.com/p/pharo/issues/detail?id=3236'.
	self loadTogether: self script433 merge: false.
	self flushCaches.
! !
