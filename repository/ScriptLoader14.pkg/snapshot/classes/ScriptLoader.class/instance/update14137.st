
!ScriptLoader methodsFor: 'pharo - updates'!
update14137
	"self new update14137"
	self withUpdateLog: ' Issue 4596:	WeakOrderedColllection array is replaced by an Array instead of a WeakArray
	(UNDO the UNDO... part1)'.
	self loadTogether: self script401 merge: false.
	self flushCaches.
! !
