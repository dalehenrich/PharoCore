
!ScriptLoader methodsFor: 'pharo - updates'!
update14056
	"self new update14056"
	self withUpdateLog: '- Issue 4513:	ScrollBar and MorphicModel needs cleaning. Stef and Igor killing tha big monster - Part one. :) 
	http://code.google.com/p/pharo/issues/detail?id=4513'.
	self loadTogether: self script321 merge: false.
	self flushCaches.
! !
