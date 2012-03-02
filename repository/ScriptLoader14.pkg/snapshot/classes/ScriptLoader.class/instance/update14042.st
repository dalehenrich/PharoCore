
!ScriptLoader methodsFor: 'pharo - updates'!
update14042
	"self new update14042"
	self withUpdateLog: '- Interval>>rangeIncludes: is mis-categorized. Thanks Sean Denigris

- Issue 4505:	ExternalSemaphore class>>#safelyRegisterExternalObject: silently fails when running out of VM space. Thanks Henrik Sperre Johansen
	http://code.google.com/p/pharo/issues/detail?id=4505'.
	self loadTogether: self script307 merge: false.
	self flushCaches.
! !
