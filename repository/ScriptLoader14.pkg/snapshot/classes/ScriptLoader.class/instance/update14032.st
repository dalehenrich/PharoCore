
!ScriptLoader methodsFor: 'pharo - updates'!
update14032
	"self new update14032"
	self withUpdateLog: '- Issue 4411:	examples in Number comments. Thanks Nicolas Cellier and Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=4411
	
- Issue 4414:	test for Number. Thanks Nicolas Cellier and Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=4414'.
	self loadTogether: self script297 merge: false.
	self flushCaches.
! !
