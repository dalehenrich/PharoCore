
!ScriptLoader methodsFor: 'pharo - updates'!
update14086
	"self new update14086"
	self withUpdateLog: 'Issue 4621:	ToolRegistery bug
	http://code.google.com/p/pharo/issues/detail?id=4621
Issue 4610:	MCWorkingCopyBrowser references lot of undefined variables
	http://code.google.com/p/pharo/issues/detail?id=4610'.
	self loadTogether: self script351 merge: false.
	self flushCaches.
! !
