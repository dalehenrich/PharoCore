
!ScriptLoader methodsFor: 'pharo - updates'!
update14271
	"self new update14271"
	self withUpdateLog: '- Issue 5128: 	HandMorph>>userInitials: aString andPicture: aForm (part one just the drawOn: method).
	http://code.google.com/p/pharo/issues/detail?id=5128
	
- Issue 5129: 	adding eventSource instance variable to HandMorph
	http://code.google.com/p/pharo/issues/detail?id=5129'.
	self loadTogether: self script534 merge: false.
	self flushCaches.
! !
