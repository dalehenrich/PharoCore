
!ScriptLoader methodsFor: 'pharo - updates'!
update14247
	"self new update14247"
	self withUpdateLog: 'Issue 5062:	Proceed Broken
	http://code.google.com/p/pharo/issues/detail?id=5062
Issue 5060:	postscript: do	SmalltalkEditor initialize
	http://code.google.com/p/pharo/issues/detail?id=5060
Issue 4954:	MorphicUIManager shall attempt to log the error before opening the UI
	http://code.google.com/p/pharo/issues/detail?id=4954'.
	self loadTogether: self script510 merge: false.
	SmalltalkEditor initialize.
	self flushCaches.
! !
