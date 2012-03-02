
!ScriptLoader methodsFor: 'pharo - updates'!
update14276
	"self new update14276"
	self withUpdateLog: '- Issue 5135:	Set>>grow buggy for sets with nil. Thanks Igor Stasenko.
	http://code.google.com/p/pharo/issues/detail?id=5135
	
- Issue 5130:	Remove magicHalo behavior.
	http://code.google.com/p/pharo/issues/detail?id=5130'.
	self loadTogether: self script539 merge: false.
	self flushCaches.
! !
