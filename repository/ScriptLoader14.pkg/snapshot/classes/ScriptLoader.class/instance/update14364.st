
!ScriptLoader methodsFor: 'pharo - updates'!
update14364
	"self new update14364"
	self withUpdateLog: 'Issue 5404:	TextEditor correctFrom:to:with: is too clever
	http://code.google.com/p/pharo/issues/detail?id=5404
Issue 5409:	Transcripter: only restore display when started from the World menu
	http://code.google.com/p/pharo/issues/detail?id=5409
	'.
	self loadTogether: self script625 merge: false.
	self flushCaches.
! !
