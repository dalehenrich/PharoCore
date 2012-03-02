
!ScriptLoader methodsFor: 'pharo - updates'!
update14112
	"self new update14112"
	self withUpdateLog: '- Issue 4550:	methodSymbol is a bad name for selector. 
	http://code.google.com/p/pharo/issues/detail?id=4550
- Issue 4711:	Pharo 1.4 has wrong link to inbox. Thanks Sean De Nigris.
	http://code.google.com/p/pharo/issues/detail?id=4711
- Issue 4710:	Incorrect comment for ProtoObject>>pointersToExcluding: Thanks Sean De Nigris.
	http://code.google.com/p/pharo/issues/detail?id=4710
- Issue 2394:	Halt :) Thanks Sean De Nigris and Stefan Eggermont.
	http://code.google.com/p/pharo/issues/detail?id=2394
	
'.
	self loadTogether: self script376 merge: false.
	self flushCaches.
! !
