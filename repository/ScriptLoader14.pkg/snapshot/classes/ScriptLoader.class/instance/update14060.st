
!ScriptLoader methodsFor: 'pharo - updates'!
update14060
	"self new update14060"
	self withUpdateLog: '- enhancing Ring and fixing some API for better tools integration. SystemNavigation is now using Ring objects.
todo: should fix some tests on unsentMessages'.
	self loadTogether: self script325 merge: false.
	self flushCaches.
! !
