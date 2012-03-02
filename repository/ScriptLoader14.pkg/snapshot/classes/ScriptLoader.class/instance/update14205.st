
!ScriptLoader methodsFor: 'pharo - updates'!
update14205
	"self new update14205"
	self withUpdateLog: 'Issue 4927:	Remove duplicate InputEvent sensor entry in startup/shutdown lists ( running out of semaphores )
	http://code.google.com/p/pharo/issues/detail?id=4927
Issue 4683:	Code completion breaks search fields
	http://code.google.com/p/pharo/issues/detail?id=4683
Issue 4921:	MIMEDocument class >> guessTypeFromName: should return a String
	http://code.google.com/p/pharo/issues/detail?id=4921'.
	self loadTogether: self script468 merge: false.
	"Smalltalk removeFromStartUpList: InputEventPollingFetcher.
Smalltalk removeFromShutDownList: InputEventPollingFetcher."
	self flushCaches.
! !
