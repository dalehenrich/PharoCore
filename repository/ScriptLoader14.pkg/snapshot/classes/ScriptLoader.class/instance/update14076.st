
!ScriptLoader methodsFor: 'pharo - updates'!
update14076
	"self new update14076"
	self withUpdateLog: 'Issue 4596:	WeakOrderedColllection array is replaced by an Array instead of a WeakArray
	(part 2)	'.
	self loadTogether: self script341 merge: false.
	self flushCaches.
! !
