
!ScriptLoader methodsFor: 'pharo - updates'!
update14075
	"self new update14075"
	self withUpdateLog: 'Issue 4596:	WeakOrderedColllection array is replaced by an Array instead of a WeakArray
	(part 1)	'.
	self loadTogether: self script340 merge: false.
	self flushCaches.
! !
