
!ScriptLoader methodsFor: 'pharo - updates'!
update14233
	"self new update14233"
	self withUpdateLog: '- Issue 5004:	Decompiler miss-initialize the Encoder literalStream with a ReadStream when a WriteStream is expected. Thanks Nicolas Cellier.
	http://code.google.com/p/pharo/issues/detail?id=5004
'.
	self loadTogether: self script496 merge: false.
	self flushCaches.
! !
