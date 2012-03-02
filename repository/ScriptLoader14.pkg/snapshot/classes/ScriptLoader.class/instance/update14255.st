
!ScriptLoader methodsFor: 'pharo - updates'!
update14255
	"self new update14255"
	self withUpdateLog: 'Issue 5080:	Remove BitmapStreamTests
	http://code.google.com/p/pharo/issues/detail?id=5080
Issue 5079:	Small cleanup methods unsent sending unexisting messages
	http://code.google.com/p/pharo/issues/detail?id=5079
Issue 5076:	veryDeepCopyUsing: is not used
	http://code.google.com/p/pharo/issues/detail?id=5076
Issue 5082:	remove GZipSurrogateStream
	http://code.google.com/p/pharo/issues/detail?id=5082'.
	self loadTogether: self script518 merge: false.
	self flushCaches.
! !
