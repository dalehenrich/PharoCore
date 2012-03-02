
!ScriptLoader methodsFor: 'pharo - updates'!
update14070
	"self new update14070"
	self withUpdateLog: 'Issue 3923:	#condenseChanges not working in 1.3
	http://code.google.com/p/pharo/issues/detail?id=3923'.
	self loadTogether: self script335 merge: false.
	self flushCaches.
! !
