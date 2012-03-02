
!ScriptLoader methodsFor: 'pharo - updates'!
update14232
	"self new update14232"
	self withUpdateLog: '-  Issue 5002:	Cleaned Transcripter + add a menu entry.
	http://code.google.com/p/pharo/issues/detail?id=5002

- Issue 4985:	Object>>log: -> Object>>trace:
	http://code.google.com/p/pharo/issues/detail?id=4985'.
	self loadTogether: self script495 merge: false.
	self flushCaches.
! !
