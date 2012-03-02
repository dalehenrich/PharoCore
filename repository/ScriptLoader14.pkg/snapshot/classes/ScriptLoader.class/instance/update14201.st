
!ScriptLoader methodsFor: 'pharo - updates'!
update14201
	"self new update14201"
	self withUpdateLog: '
Issue 4856:	Unconsistent behavior of cmd-right / cmd-left Thanks Benjamin.
	http://code.google.com/p/pharo/issues/detail?id=4856
	
	
'.
	self loadTogether: self script464 merge: false.
	self flushCaches.
! !
