
!ScriptLoader methodsFor: 'pharo - updates'!
update14134
	"self new update14134"
	self withUpdateLog: 'Issue 4596:	WeakOrderedColllection array is replaced by an Array instead of a WeakArray
	http://code.google.com/p/pharo/issues/detail?id=4596
	
Part I (add back grow, already fixed to use arraytype)'.
	self loadTogether: self script398 merge: false.
	self flushCaches.
! !
