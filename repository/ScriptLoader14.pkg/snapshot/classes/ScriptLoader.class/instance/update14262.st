
!ScriptLoader methodsFor: 'pharo - updates'!
update14262
	"self new update14262"
	self withUpdateLog: 'Issue 5120:	Morph>>stepTime comment addition
	http://code.google.com/p/pharo/issues/detail?id=5120
Issue 5115:	pluggableButtonMorph sensor cleaning
	http://code.google.com/p/pharo/issues/detail?id=5115
Issue 5110:	Certain classes cannot be uncompact
	http://code.google.com/p/pharo/issues/detail?id=5110'.
	self loadTogether: self script525 merge: false.
	self flushCaches.
! !
