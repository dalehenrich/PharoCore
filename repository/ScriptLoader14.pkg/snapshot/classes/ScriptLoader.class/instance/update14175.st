
!ScriptLoader methodsFor: 'pharo - updates'!
update14175
	"self new update14175"
	self withUpdateLog: 'Issue 4867:	Diálogo de Implementeros y de Senderos no protestan quando código cambia
	http://code.google.com/p/pharo/issues/detail?id=4867
Issue 4802:	cmd - D doesnt trigger #debugIt
	http://code.google.com/p/pharo/issues/detail?id=4802'.
	self loadTogether: self script438 merge: false.
	self flushCaches.
! !
