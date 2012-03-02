
!ScriptLoader methodsFor: 'pharo - updates'!
update14048
	"self new update14048"
	self withUpdateLog: '- Issue 4528: Exception on:fork: enhancement. Thanks Igor Stasenko and Lukas Renggli for the idea and ... '.
	self loadTogether: self script313 merge: false.
	self flushCaches.
! !
