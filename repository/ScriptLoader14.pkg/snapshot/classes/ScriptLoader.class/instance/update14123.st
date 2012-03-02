
!ScriptLoader methodsFor: 'pharo - updates'!
update14123
	"self new update14123"
	self withUpdateLog: 'Issue 4767:	remove ScriptLoader>>#installingInstaller
	http://code.google.com/p/pharo/issues/detail?id=4767
	
Issue 4735:	Compatibility package is dirty in Pharo1.4a update: #14112
	http://code.google.com/p/pharo/issues/detail?id=4735'.
	self loadTogether: self script387 merge: false.
	self flushCaches.
! !
