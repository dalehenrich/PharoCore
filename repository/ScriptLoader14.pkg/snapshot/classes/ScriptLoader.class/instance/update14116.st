
!ScriptLoader methodsFor: 'pharo - updates'!
update14116
	"self new update14116"
	self withUpdateLog: '- Issue 4746:	Improving PluggableListMorph. Thanks Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4746'.
	self loadTogether: self script380 merge: false.
	self flushCaches.
! !
