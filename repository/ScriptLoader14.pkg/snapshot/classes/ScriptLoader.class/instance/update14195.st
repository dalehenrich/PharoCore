
!ScriptLoader methodsFor: 'pharo - updates'!
update14195
	"self new update14195"
	self withUpdateLog: '

-Issue 4899:	Using a Pool var in a subclass of a pool user does not refer to the pool when an existing class with the same name exit. Stef and Igor having fun. Part Two.  
	http://code.google.com/p/pharo/issues/detail?id=4899'.
	self loadTogether: self script458 merge: false.
	self flushCaches.
! !
