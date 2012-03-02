
!ScriptLoader methodsFor: 'pharo - updates'!
update14260
	"self new update14260"
	self withUpdateLog: 'Issue 5084:	Remove textStyle FileOut
	http://code.google.com/p/pharo/issues/detail?id=5084
Issue 5108:	InflateStream bug with empty strings
	http://code.google.com/p/pharo/issues/detail?id=5108
Issue 4920:	Copying a trait fails
	http://code.google.com/p/pharo/issues/detail?id=4920
Issue 5081:	Remve Morph saving to file/loading	
	http://code.google.com/p/pharo/issues/detail?id=5081'.
	self loadTogether: self script523 merge: false.
	self flushCaches.
! !
