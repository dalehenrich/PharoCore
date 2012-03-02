
!ScriptLoader methodsFor: 'pharo - updates'!
update14080
	"self new update14080"
	self withUpdateLog: '-  Issue 4607:	Refactor Debugger >> content:notifying:. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=4607
	
- Issue 4606: Fix drawing shadow of morphs. Thanks Igor Stasenko.
	http://code.google.com/p/pharo/issues/detail?id=4606
	
-  Issue 4607:	Minor-fix-to-the-old-MCMergeBrowser. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=4601
	
'.
	self loadTogether: self script345 merge: false.
	self flushCaches.
! !
