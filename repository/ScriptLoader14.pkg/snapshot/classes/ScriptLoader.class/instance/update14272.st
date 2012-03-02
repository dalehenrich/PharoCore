
!ScriptLoader methodsFor: 'pharo - updates'!
update14272
	"self new update14272"
	self withUpdateLog: '- Issue 5128: 	HandMorph>>userInitials: aString andPicture: aForm (part one just the drawOn: method).
	well another one is called during refresh :)
	http://code.google.com/p/pharo/issues/detail?id=5128
	'.
	self loadTogether: self script535 merge: false.
	self flushCaches.
! !
