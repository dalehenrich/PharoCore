
!ScriptLoader methodsFor: 'pharo - updates'!
update14107
	"self new update14107"
	self withUpdateLog: 'Issue 4679:	numberOfLinesOfCode wrongly defined
	http://code.google.com/p/pharo/issues/detail?id=4679
Issue 4680:	TranscriptModel is ununsed
	http://code.google.com/p/pharo/issues/detail?id=4680
Issue 4677:	Remove last unneeded isDoIt checks
	http://code.google.com/p/pharo/issues/detail?id=4677'.
	self loadTogether: self script371 merge: false.
	self flushCaches.
! !
