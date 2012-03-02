
!ScriptLoader methodsFor: 'pharo - updates'!
update14148
	"self new update14148"
	self withUpdateLog: '- Issue 4814:	CompiledMethod equality broken for class side methods. Thanks guys!!
	http://code.google.com/p/pharo/issues/detail?id=4814
	
- Issue 4718:	Deprecate old deprecation messages
	http://code.google.com/p/pharo/issues/detail?id=4718
	Thanks Sean De Nigris
	
'.
	self loadTogether: self script412 merge: false.
	self flushCaches.
! !
