
!ScriptLoader methodsFor: 'pharo - updates'!
update14273
	"self new update14273"
	self withUpdateLog: '- Issue 5128: 	HandMorph>>userInitials: aString andPicture: aForm final part
	http://code.google.com/p/pharo/issues/detail?id=5128
	'.
	self loadTogether: self script536 merge: false.
	self flushCaches.
! !
