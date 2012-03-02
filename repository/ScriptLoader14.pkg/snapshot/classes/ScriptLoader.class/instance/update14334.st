
!ScriptLoader methodsFor: 'pharo - updates'!
update14334
	"self new update14334"
	self withUpdateLog: 'Issue 5307:	Debugger improvement
	http://code.google.com/p/pharo/issues/detail?id=5307
Issue 5305:	cannot filein an entire file	
	http://code.google.com/p/pharo/issues/detail?id=5305
Issue 5292:	FileDialogWindow(Object)>>doesNotUnderstand: #directoriesFor:
	http://code.google.com/p/pharo/issues/detail?id=5292
Issue 5306:	Dont deadlock Morphs
	http://code.google.com/p/pharo/issues/detail?id=5306'.
	self loadTogether: self script595 merge: false.
	self flushCaches.
! !
