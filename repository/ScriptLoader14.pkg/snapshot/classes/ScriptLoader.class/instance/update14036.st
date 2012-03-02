
!ScriptLoader methodsFor: 'pharo - updates'!
update14036
	"self new update14036"
	self withUpdateLog: '- Issue 4519:	-1 copySignTo: 0.0 should return Float negativeZero. Thanks Nicolas Cellier.
	http://code.google.com/p/pharo/issues/detail?id=4519	
- Issue 4518:	Don t inline digitValue	
Thanks Nicolas Cellier.
	http://code.google.com/p/pharo/issues/detail?id=4518'.
	self loadTogether: self script301 merge: false.
	self flushCaches.
! !
