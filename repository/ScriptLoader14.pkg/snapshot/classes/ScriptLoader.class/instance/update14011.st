
!ScriptLoader methodsFor: 'pharo - updates'!
update14011
	"self new update14011"
	self withUpdateLog: '- MC Conflict cleanup: just renaming some methods.'.
	self loadTogether: self script276 merge: false.
	self flushCaches.
! !
