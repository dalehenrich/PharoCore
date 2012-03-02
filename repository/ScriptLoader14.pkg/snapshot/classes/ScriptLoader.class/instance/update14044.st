
!ScriptLoader methodsFor: 'pharo - updates'!
update14044
	"self new update14044"
	self withUpdateLog: '- Issue 4530:	Source enh. Thanks Veronica Uquillas-Gomez.
	
- Issue 4529:	Announcement delivery breaks if last subscriber is curtailed. Thanks Henrik Johanssen.'.
	self loadTogether: self script309 merge: false.
	self flushCaches.
! !
