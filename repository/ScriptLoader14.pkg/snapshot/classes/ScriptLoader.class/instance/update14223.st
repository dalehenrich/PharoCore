
!ScriptLoader methodsFor: 'pharo - updates'!
update14223
	"self new update14223"
	self withUpdateLog: 'Issue 4986:	Removing NewTextMorph and related	
	http://code.google.com/p/pharo/issues/detail?id=4986
Issue 4987:	Latest Polymorph improvements
	http://code.google.com/p/pharo/issues/detail?id=4987
Issue 4983:	PluggableListMorph doesnt handle propoerly selector without arg for wrapping (and background and separators)
	http://code.google.com/p/pharo/issues/detail?id=4983'.
	self loadTogether: self script486 merge: false.
	self flushCaches.
! !
