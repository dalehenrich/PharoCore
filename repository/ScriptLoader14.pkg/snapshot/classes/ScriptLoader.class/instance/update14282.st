
!ScriptLoader methodsFor: 'pharo - updates'!
update14282
	"self new update14282"
	self withUpdateLog: '- Issue 2560:	Convenient methods from Grease for Strings. Part 4.
	http://code.google.com/p/pharo/issues/detail?id=2560
	
- Issue 5161:	Small fixes to FSReadStream
	http://code.google.com/p/pharo/issues/detail?id=5161
	
- Issue 5162:	Little fix about Tabs
	http://code.google.com/p/pharo/issues/detail?id=5162
	
- Issue 3692:	Default line-end convention fix. Thanks Javier pinas, Igor and henrik.
	http://code.google.com/p/pharo/issues/detail?id=3692.'.
	self loadTogether: self script545 merge: false.
	self flushCaches.
! !
