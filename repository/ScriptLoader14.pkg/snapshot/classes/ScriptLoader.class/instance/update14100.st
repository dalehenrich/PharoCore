
!ScriptLoader methodsFor: 'pharo - updates'!
update14100
	"self new update14100"
	self withUpdateLog: '- Issue 4666:	Fix some calls of deprecated Methods (leftShiftPresses, MessageTally). Thanks Marcus Denker.
	http://code.google.com/p/pharo/issues/detail?id=4666
	
- Issue 4668:	Remove #isSafeVM
	Thanks Marcus Denker.
	http://code.google.com/p/pharo/issues/detail?id=4668
	
-  Issue 4667:	Use <expectedFailure>
	Thanks Marcus Denker.
	http://code.google.com/p/pharo/issues/detail?id=4667'.
	self loadTogether: self script364 merge: false.
	self flushCaches.
! !
