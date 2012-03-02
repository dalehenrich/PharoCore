
!ScriptLoader methodsFor: 'pharo - updates'!
update14012
	"self new update14012"
	self withUpdateLog: '- Issue 4412:	CompiledMethod >> #valueWithReceiver:arguments: instead of Object >> #withArgs:executeMethod:. 
	http://code.google.com/p/pharo/issues/detail?id=4412'.
	self loadTogether: self script277 merge: false.
	self flushCaches.
! !
