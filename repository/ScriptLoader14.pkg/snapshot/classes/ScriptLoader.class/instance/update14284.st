
!ScriptLoader methodsFor: 'pharo - updates'!
update14284
	"self new update14284"
	self withUpdateLog: '-  Issue 5175:	CommandLine args not working. Thanks Camillo Bruni. 
	http://code.google.com/p/pharo/issues/detail?id=5175
	
- Issue 5171:	Remove styling from PreDebug warning message. Thanks Guillermo Polito.
	http://code.google.com/p/pharo/issues/detail?id=5171
	
- Issue 5165:	Incorporate to Pharo DisplayScreen options. Thanks Esteban Lorenzano.
	http://code.google.com/p/pharo/issues/detail?id=5165
	
'.
	self loadTogether: self script547 merge: false.
	self flushCaches.
! !
