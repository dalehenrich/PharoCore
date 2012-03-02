
!ScriptLoader methodsFor: 'pharo - updates'!
update14037
	"self new update14037"
	self withUpdateLog: '- Issue 4522:	Separate ceiling/floor/truncated/rounded tests for Float and Fraction. Thanks Nicolas Cellier
	http://code.google.com/p/pharo/issues/detail?id=4522
	
- Issue 4517:	Better estimation of number of digits in base 10
	Thanks Nicolas Cellier
	http://code.google.com/p/pharo/issues/detail?id=4517
	
- Issue 4516:	copying a class should copy the sharedPools
	Thanks Nicolas Cellier
	http://code.google.com/p/pharo/issues/detail?id=4516'.
	self loadTogether: self script302 merge: false.
	self flushCaches.
! !
