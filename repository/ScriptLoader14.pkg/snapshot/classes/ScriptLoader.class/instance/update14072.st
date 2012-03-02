
!ScriptLoader methodsFor: 'pharo - updates'!
update14072
	"self new update14072"
	self withUpdateLog: '- Issue 3433:	Color improvement
	http://code.google.com/p/pharo/issues/detail?id=3433

- Better class comment for FlatListMessageBrowser'.
	self loadTogether: self script337 merge: false.
	self flushCaches.
! !
