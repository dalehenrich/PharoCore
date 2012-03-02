
!ScriptLoader methodsFor: 'pharo - updates'!
update14169
	"self new update14169"
	self withUpdateLog: 'Issue 3236:	Cuis DateAndTime Enhancement (Part1)
	http://code.google.com/p/pharo/issues/detail?id=3236'.
	self loadTogether: self script432 merge: false.
	self flushCaches.
! !
