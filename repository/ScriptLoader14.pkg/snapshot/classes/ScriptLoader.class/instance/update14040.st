
!ScriptLoader methodsFor: 'pharo - updates'!
update14040
	"self new update14040"
	self withUpdateLog: '- Issue 4504: check button not updated. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=4504
	
- Issue 4525: Fraction asFloat does not return negativeZero in case of Underflow. Thanks Nicolas Cellier.
	http://code.google.com/p/pharo/issues/detail?id=4525
	
- Issue 4524:	DomainError signalTo: sets wrong bounds
	Thanks Nicolas Cellier.
	http://code.google.com/p/pharo/issues/detail?id=4524'.
	self loadTogether: self script305 merge: false.
	self flushCaches.
! !
