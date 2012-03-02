
!ScriptLoader methodsFor: 'pharo - updates'!
update14155
	"self new update14155"
	self withUpdateLog: 'Issue 4830:	Improve ClassSearch responsivness
	http://code.google.com/p/pharo/issues/detail?id=4830
Issue 4826:	Speedup MethodDictionary #rehash
	http://code.google.com/p/pharo/issues/detail?id=4826
Issue 4831:	Fixing wrong selection returned when clicking on tick list
	http://code.google.com/p/pharo/issues/detail?id=4831
Issue 2004:	Object>>windowActiveOnFirstClick looks strange
	http://code.google.com/p/pharo/issues/detail?id=2004'.
	self loadTogether: self script419 merge: false.
	self flushCaches.
! !
