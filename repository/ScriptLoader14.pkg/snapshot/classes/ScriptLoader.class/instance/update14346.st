
!ScriptLoader methodsFor: 'pharo - updates'!
update14346
	"self new update14346"
	self withUpdateLog: 'Issue 5345:	Duplicated code in FlatMessageLIstBrowser
	http://code.google.com/p/pharo/issues/detail?id=5345
	
Issue 5188:	Fast Drag doesnt work anymore
	http://code.google.com/p/pharo/issues/detail?id=5188
	
Issue 5344:	Refactor in CheckboxMorph
	http://code.google.com/p/pharo/issues/detail?id=5344'.
	self loadTogether: self script607 merge: false.
	self flushCaches.
! !
