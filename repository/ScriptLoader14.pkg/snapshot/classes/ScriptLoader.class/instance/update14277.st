
!ScriptLoader methodsFor: 'pharo - updates'!
update14277
	"self new update14277"
	self withUpdateLog: '- Issue 5143:	Replacing Monitor with Semaphore in Announcer. Thanks Igor Stasenko and Stéphane Ducasse.
	http://code.google.com/p/pharo/issues/detail?id=5143
	
- Issue 5140:	Some cleanup of unused (but defined) stuff.
	Thanks Igor Stasenko and Stéphane Ducasse.
	http://code.google.com/p/pharo/issues/detail?id=5140
	
- Issue 5138:	Remove TextConstants from Array.
	Thanks Igor Stasenko and Stéphane Ducasse.
	http://code.google.com/p/pharo/issues/detail?id=5138

- Issue 5134:	Comment of Collection>>#reduce:	
	http://code.google.com/p/pharo/issues/detail?id=5134

- Issue 5098:	Settings browser wants to repeatedly safe changes. Thanks Alain Plantec
	http://code.google.com/p/pharo/issues/detail?id=5098
	
- Issue 5098:	Settings browser wants to repeatedly safe changes. Thanks Alain Plantec
	http://code.google.com/p/pharo/issues/detail?id=5098
	
- Issue 5099:	Regexp button in settings browser is slow.
	Thanks Alain Plantec
	http://code.google.com/p/pharo/issues/detail?id=5099'.
	self loadTogether: self script540 merge: false.
	self flushCaches.
! !
