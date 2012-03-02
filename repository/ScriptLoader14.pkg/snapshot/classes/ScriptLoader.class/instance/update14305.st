
!ScriptLoader methodsFor: 'pharo - updates'!
update14305
	"self new update14305"
	self withUpdateLog: '- Issue 5223:	New approach to tryNamedPrimitive:with:. Thanks Mariano Martinez-Peck.
	http://code.google.com/p/pharo/issues/detail?id=5223
	
 Issue 4997:	isPrime is broken
	http://code.google.com/p/pharo/issues/detail?id=4997'.
	self loadTogether: self script566 merge: false.
	self flushCaches.
! !
