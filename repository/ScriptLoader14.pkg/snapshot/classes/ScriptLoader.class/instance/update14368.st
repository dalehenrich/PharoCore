
!ScriptLoader methodsFor: 'pharo - updates'!
update14368
	"self new update14368"
	self withUpdateLog: 'Issue 5421:	Deprecate BlockContext
	http://code.google.com/p/pharo/issues/detail?id=5421
	
Issue 5420:	Remove MidiPrimTester
	http://code.google.com/p/pharo/issues/detail?id=5420
	
Issue 5419:	clean changeset conflict checker
	http://code.google.com/p/pharo/issues/detail?id=5419
	
Issue 5411:	halt: deprecated in Pharo 1.4 ... bring it back
	http://code.google.com/p/pharo/issues/detail?id=5411'.
	self loadTogether: self script629 merge: false.
	self flushCaches.
! !
