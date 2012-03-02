
!ScriptLoader methodsFor: 'pharo - updates'!
update14207
	"self new update14207"
	self withUpdateLog: 'Issue 4928:	Empty the class BlockContext...
	http://code.google.com/p/pharo/issues/detail?id=4928
Issue 4410:	CompiledMethod >> #valueWithReceiver:arguments: instead of Object >> #withArgs:executeMethod:
	http://code.google.com/p/pharo/issues/detail?id=4410'.
	self loadTogether: self script470 merge: false.
	self flushCaches.
! !
