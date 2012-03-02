
!ScriptLoader methodsFor: 'pharo - updates'!
update14096
	"self new update14096"
	self withUpdateLog: 'Issue 4592:	ToolSet is deprecated
	http://code.google.com/p/pharo/issues/detail?id=4592
Issue 4576:	MessageNames should be deprecated
	http://code.google.com/p/pharo/issues/detail?id=4576
Issue 3235:	better bag sum
	http://code.google.com/p/pharo/issues/detail?id=3235
'.
	self loadTogether: self script360 merge: false.
	self flushCaches.
! !
