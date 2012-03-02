
!ScriptLoader methodsFor: 'pharo - updates'!
update14081
	"self new update14081"
	self withUpdateLog: '- Issue 4614:	Ring latest changes - firt shot at = for entities and a lot more . Thanks Veronica Uquillas Gomez
	http://code.google.com/p/pharo/issues/detail?id=4614'.
	self loadTogether: self script346 merge: false.
	self flushCaches.
! !
