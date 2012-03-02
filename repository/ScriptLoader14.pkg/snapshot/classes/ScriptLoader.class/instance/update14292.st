
!ScriptLoader methodsFor: 'pharo - updates'!
update14292
	"self new update14292"
	self withUpdateLog: '- Issue 5141:	We should remove InputEventPollingFetcher.
	InputEventSensor installEventSensorFramework'.
	self loadTogether: self script555 merge: false.
	InputEventSensor installEventSensorFramework.
	self flushCaches.
! !
