
!ScriptLoader methodsFor: 'pharo - updates'!
update14264
	"self new update14264"
	self withUpdateLog: '- Issue 5118:	Check pointsTo: and InstVarInclude: in squeak.
	Thanks levente and mariano.
	http://code.google.com/p/pharo/issues/detail?id=5118
	
- Issue 5123:	Clone is sent but not defined in FloatArray
	http://code.google.com/p/pharo/issues/detail?id=5123

- Issue 5112:	More consistent SharedPool protocol. Thanks Mariano.
	http://code.google.com/p/pharo/issues/detail?id=5112
'.
	self loadTogether: self script527 merge: false.
	self flushCaches.
! !
