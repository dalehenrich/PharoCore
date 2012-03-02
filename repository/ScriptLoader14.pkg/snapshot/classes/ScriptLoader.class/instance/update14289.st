
!ScriptLoader methodsFor: 'pharo - updates'!
update14289
	"self new update14289"
	self withUpdateLog: '- Issue 5201:	Fix PluggableIconicListMorph to be able to wrap with any morph. Thanks Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=5201
	
- Issue 5203:	Respect required packages for changes. Thanks Camillo Bruni. 
	http://code.google.com/p/pharo/issues/detail?id=5203
	
- Issue 5205:	CompiledMethod >> #browse should open a browser on the installed method not the CompiledMethod class. Thanks Camillo Bruni. 
	http://code.google.com/p/pharo/issues/detail?id=5205
	
-  Issue 5192:	0 is not a power of two. Thanks Henrik Johansen.
	-Fixes 0 isPowerOfTwo
- Introduces DomainError for Integer >> larger/smallerPowerOfTwo when receiver is invalid.
- Implements *PowerOfTwo protocol for Fractions.
- Updated tests and added missing ones
- DomainErrors now come with a default messageText, and a class comment explaining when to specify your own
	http://code.google.com/p/pharo/issues/detail?id=5192
		'.
	self loadTogether: self script552 merge: false.
	self flushCaches.
! !
