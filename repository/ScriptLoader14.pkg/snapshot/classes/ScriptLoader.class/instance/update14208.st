
!ScriptLoader methodsFor: 'pharo - updates'!
update14208
	"self new update14208"
	self withUpdateLog: 'Issue 4932:	 Emergency evaluator
	http://code.google.com/p/pharo/issues/detail?id=4932
	
Issue 4931:	dragAnimationFor:transferMorph: is sent but not implemented
	http://code.google.com/p/pharo/issues/detail?id=4931	
	
Issue 4919:	Class copying issues
	http://code.google.com/p/pharo/issues/detail?id=4919'.
	self loadTogether: self script471 merge: false.
	self flushCaches.
! !
