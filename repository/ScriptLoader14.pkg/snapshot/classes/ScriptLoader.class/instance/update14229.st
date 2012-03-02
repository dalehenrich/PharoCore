
!ScriptLoader methodsFor: 'pharo - updates'!
update14229
	"self new update14229"
	self withUpdateLog: '- Issue 3129:	menu auto decoration should be removed. Thanks Alain Plantec. Gary may be this can impact you so watch out :).
	
	http://code.google.com/p/pharo/issues/detail?id=3129
	
'.
	self loadTogether: self script492 merge: false.
	self flushCaches.
! !
