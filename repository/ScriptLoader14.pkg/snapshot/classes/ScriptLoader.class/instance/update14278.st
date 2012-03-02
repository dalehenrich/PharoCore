
!ScriptLoader methodsFor: 'pharo - updates'!
update14278
	"self new update14278"
	self withUpdateLog: '- Issue 5144:	Sensor cleanup. Thanks Igor Stasenko and Stéphane Ducasse. http://code.google.com/p/pharo/issues/detail?id=5144'.
	self loadTogether: self script541 merge: false.
	self flushCaches.
! !
