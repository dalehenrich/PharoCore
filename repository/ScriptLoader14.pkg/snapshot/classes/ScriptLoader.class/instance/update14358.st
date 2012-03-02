
!ScriptLoader methodsFor: 'pharo - updates'!
update14358
	"self new update14358"
	self withUpdateLog: 'Issue 5390:	Move the Multi* variants to the package of DisplayScanner
	http://code.google.com/p/pharo/issues/detail?id=5390
	
Issue 5387:	remove references to BlockContext from Debugger and ClassBuilder
	http://code.google.com/p/pharo/issues/detail?id=5387
	
Issue 5385:	XTableForFixedFont is unused
	http://code.google.com/p/pharo/issues/detail?id=5385'.
	self loadTogether: self script619 merge: false.
	self flushCaches.
! !
