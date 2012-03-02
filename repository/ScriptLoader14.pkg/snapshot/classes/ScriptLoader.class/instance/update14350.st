
!ScriptLoader methodsFor: 'pharo - updates'!
update14350
	"self new update14350"
	self withUpdateLog: '- Issue 5365:	Adding to the system useful extensions from Ecompletion
	http://code.google.com/p/pharo/issues/detail?id=5365
	
- Issue 5364:	Added to Shout the Ecompletion extensions
	http://code.google.com/p/pharo/issues/detail?id=5364'.
	self loadTogether: self script611 merge: false.
	self flushCaches.
! !
