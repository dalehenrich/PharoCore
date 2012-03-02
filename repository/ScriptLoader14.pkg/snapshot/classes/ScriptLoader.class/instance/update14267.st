
!ScriptLoader methodsFor: 'pharo - updates'!
update14267
	"self new update14267"
	self withUpdateLog: 'Issue 5113:	Use ZnClient instead of HttpClient. Second attempt'.
	self loadTogether: self script530 merge: false.
	self flushCaches.
! !
