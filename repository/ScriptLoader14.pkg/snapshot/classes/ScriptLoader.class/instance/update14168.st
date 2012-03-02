
!ScriptLoader methodsFor: 'pharo - updates'!
update14168
	"self new update14168"
	self withUpdateLog: 'Issue 4809:	PluggableListMorph improvment
	http://code.google.com/p/pharo/issues/detail?id=4809'.
	self loadTogether: self script431 merge: false.
	ScriptLoader new deletePackage: 'Deprecated13'.
.
	self flushCaches.
! !
