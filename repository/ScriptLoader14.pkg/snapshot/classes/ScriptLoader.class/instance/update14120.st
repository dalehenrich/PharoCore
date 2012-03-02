
!ScriptLoader methodsFor: 'pharo - updates'!
update14120
	"self new update14120"
	self withUpdateLog: '-  Issue 4646:	Provide better Class Selection Widget. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=4646
	
-  Issue 4652:	TestRunner search bars. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=4652

- Fix settings opening.

- Fix size of search bars'.
	self loadTogether: self script384 merge: false.
	self flushCaches.
! !
