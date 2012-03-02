
!ScriptLoader methodsFor: 'pharo - updates'!
update14297
	"self new update14297"
	self withUpdateLog: '-  Issue 5172:	Change SystemAnnouncement names.
	http://code.google.com/p/pharo/issues/detail?id=5172

- Issue 5221: SystemClassModifiedClassDefinitionAnnouncement is missing.
	http://code.google.com/p/pharo/issues/detail?id=5221
	
'.
	self loadTogether: self script560 merge: false.
	self flushCaches.
! !
