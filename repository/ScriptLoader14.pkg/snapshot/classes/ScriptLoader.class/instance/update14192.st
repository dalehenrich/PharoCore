
!ScriptLoader methodsFor: 'pharo - updates'!
update14192
	"self new update14192"
	MorphTreeModel setTraitComposition: {} asTraitComposition.
	self withUpdateLog: 'Cleaning obsolete traits for 4904'.
	self loadTogether: self script455 merge: false.
	self flushCaches.
! !
