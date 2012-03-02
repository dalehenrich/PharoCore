
!ScriptLoader methodsFor: 'pharo - updates'!
update14125
	"self new update14125"
	self withUpdateLog: '- Fix senders and implementors so that we can select a class name and get the class (browse and so on).

- Deprecate and fix use of *centerAt: and lot of Sensor references.'.
	self loadTogether: self script389 merge: false.
	self flushCaches.
! !
