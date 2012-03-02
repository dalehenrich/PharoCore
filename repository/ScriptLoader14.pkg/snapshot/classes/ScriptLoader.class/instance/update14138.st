
!ScriptLoader methodsFor: 'pharo - updates'!
update14138
	"self new update14138"
	self withUpdateLog: ' Issue 4596:	WeakOrderedColllection array is replaced by an Array instead of a WeakArray
	(UNDO the UNDO... part2). Remove OrderedCollection #grow and #growSize'.
	self loadTogether: self script402 merge: false.
	self flushCaches.
! !
