
!ScriptLoader methodsFor: 'pharo - updates'!
update14313
	"self new update14313"
	self withUpdateLog: '-  Issue 5217:	LanguageEnvironment should cache converters.
	Thanks Benjamin van ryseghem, Igor Stasenko and Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=5217'.
	self loadTogether: self script574 merge: false.
	self flushCaches.
! !
