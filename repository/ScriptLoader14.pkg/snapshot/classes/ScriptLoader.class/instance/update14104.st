
!ScriptLoader methodsFor: 'pharo - updates'!
update14104
	"self new update14104"
	self withUpdateLog: '- Issue 4663:	Failing Test: SmalltalkImageTest>>#testImageName. Thanks Mike Roberts. 
	http://code.google.com/p/pharo/issues/detail?id=4663'.
	self loadTogether: self script368 merge: false.
	self flushCaches.
! !
