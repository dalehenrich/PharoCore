
!ScriptLoader methodsFor: 'pharo - updates'!
update14194
	"self new update14194"
	self withUpdateLog: '- Issue 4764:	New way to display Debbuger. Thanks Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4764

-Issue 4899:	Using a Pool var in a subclass of a pool user does not refer to the pool when an existing class with the same name exit. Stef and Igor having fun. Part one.  
	http://code.google.com/p/pharo/issues/detail?id=4899'.
	self loadTogether: self script457 merge: false.
	self flushCaches.
! !
