
!ScriptLoader methodsFor: 'pharo - updates'!
update14303
	"self new update14303"
	self withUpdateLog: '- Issue 5243:	Fix text morph margins. PartOne. Thanks Benjamin van Ryseghem.	
	http://code.google.com/p/pharo/issues/detail?id=5243

- Issue 5241:	MC Commit Dialog Improvements. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=5241

- Issue 5242:	Don t open Debugger when cancel editing block. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=5242'.
	self loadTogether: self script564 merge: false.
	self flushCaches.
! !
