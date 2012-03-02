
!ScriptLoader methodsFor: 'pharo - updates'!
update14015
	"self new update14015"
	self withUpdateLog: 'Issue 4455:	Subclasses of Obsolete classes to be removed
	http://code.google.com/p/pharo/issues/detail?id=4455
Issue 4454:	ScriptLoader: remove 1.3 update and script methods.
	http://code.google.com/p/pharo/issues/detail?id=4454
Issue 4452:	Build of 1.3 full is broken
	http://code.google.com/p/pharo/issues/detail?id=4452'.
	self loadTogether: self script280 merge: false.
	Smalltalk removeClassNamed: #PSToolBuilder.
Smalltalk removeClassNamed: #PSPluggableListSpec.
Smalltalk tools transcript initialize.
	self flushCaches.
! !
