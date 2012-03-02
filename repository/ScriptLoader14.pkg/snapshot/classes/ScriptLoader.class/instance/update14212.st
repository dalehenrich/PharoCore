
!ScriptLoader methodsFor: 'pharo - updates'!
update14212
	"self new update14212"
	self withUpdateLog: 'Issue 4948:	Request for a clearer and faster #asFloat conversion
	http://code.google.com/p/pharo/issues/detail?id=4948

Issue 2975:	faster non-primitive String primitives by using #basicAt: instead of #at: + #asInteger/#asciiValue
	http://code.google.com/p/pharo/issues/detail?id=2975
	
Issue 2228:	dont try to set the position of the file if its not possible
	http://code.google.com/p/pharo/issues/detail?id=2228'.
	self loadTogether: self script475 merge: false.
	self flushCaches.
! !
