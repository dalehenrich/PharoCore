
!ScriptLoader methodsFor: 'pharo - updates'!
update14221
	"self new update14221"
	self withUpdateLog: '- Issue 4941:	Failing Test: ArrayTest. Thanks Clara Allende.
	http://code.google.com/p/pharo/issues/detail?id=4941
	
- Issue 4985:	Object>>log: -> Object>>trace: (part one) 	http://code.google.com/p/pharo/issues/detail?id=4985
		
- Issue 4982:	FlatMessageListBrowser error on remove
	http://code.google.com/p/pharo/issues/detail?id=4982'.
	self loadTogether: self script484 merge: false.
	self flushCaches.
! !
