
!ScriptLoader methodsFor: 'pharo - updates'!
update14039
	"self new update14039"
	self withUpdateLog: '-  Issue 3916: Cannot input some Russian characters at text editors. Thanks guys

- Issue 4523: SetElement comment is missing. Thanks Nicolas Cellier'.
	self loadTogether: self script304 merge: false.
	self flushCaches.
! !
