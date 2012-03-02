
!ScriptLoader methodsFor: 'pharo - updates'!
update14355
	"self new update14355"
	self withUpdateLog: 'Issue 5338:	World menu icons are not updated when a default tool changes
	http://code.google.com/p/pharo/issues/detail?id=5338
	
Issue 5325:	PackageInfo dependent on deprecated MethodReference
	http://code.google.com/p/pharo/issues/detail?id=5325'.
	self loadTogether: self script616 merge: false.
	self flushCaches.
! !
