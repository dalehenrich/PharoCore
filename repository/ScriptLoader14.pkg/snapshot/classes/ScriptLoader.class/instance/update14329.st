
!ScriptLoader methodsFor: 'pharo - updates'!
update14329
	"self new update14329"
	self withUpdateLog: '- Issue 5249:	isPrime tests failing. Thanks Nicolas Cellier for the explanation. 
- Issue 5282:	MC Enh from Squeak. Thanks Veronica Uquillas for Jet.
- Issue 5265:	The browse method should return the browser instance. Thanks Benjmain van Ryseghem.'.
	self loadTogether: self script590 merge: false.
	self flushCaches.
! !
