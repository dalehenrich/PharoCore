
!ScriptLoader methodsFor: 'pharo - updates'!
update14367
	"self new update14367"
	self withUpdateLog: '5415: Select the first entry in the InspectorThanks to camillobruni

https://code.google.com/feeds/issues/p/pharo/issues/5415'.
	self loadTogether: self script628 merge: false.
	self flushCaches.
! !
