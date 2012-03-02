
!ScriptLoader methodsFor: 'pharo - updates'!
update14304
	"self new update14304"
	self withUpdateLog: '- Issue 5243:	Fix text morph margins. Part two. 
	http://code.google.com/p/pharo/issues/detail?id=5243
	
- Issue 5245:	Cleaning Sorter
	http://code.google.com/p/pharo/issues/detail?id=5245

- Issue 5244:	Add a comment on PluggableTextMorph. Thanks Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=5244'.
	self loadTogether: self script565 merge: false.
	self flushCaches.
! !
