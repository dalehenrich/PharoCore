
!ScriptLoader methodsFor: 'pharo - updates'!
update14311
	"self new update14311"
	self withUpdateLog: '- Issue 5202:	Implement fast Object >> #split: for single elements. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=5202'.
	self loadTogether: self script572 merge: false.
	self flushCaches.
! !
