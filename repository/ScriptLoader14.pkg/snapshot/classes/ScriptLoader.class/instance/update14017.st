
!ScriptLoader methodsFor: 'pharo - updates'!
update14017
	"self new update14017"
	"Smalltalk  removeFromShutDownList: ImageSegment."
	self withUpdateLog: 'Issue 4458:	remove ImageSegment from ShutDownList
	http://code.google.com/p/pharo/issues/detail?id=4458
Issue 4460:	Do not try to migrate instances in ImageSegements on Disk
	http://code.google.com/p/pharo/issues/detail?id=4460
Issue 4459:	Move Polymorph FillStyles and Borders to where their superlcass lives
	http://code.google.com/p/pharo/issues/detail?id=4459'.
	self loadTogether: self script282 merge: false.
	self flushCaches.
! !
