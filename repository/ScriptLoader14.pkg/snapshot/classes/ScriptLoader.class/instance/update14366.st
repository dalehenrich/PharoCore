
!ScriptLoader methodsFor: 'pharo - updates'!
update14366
	"self new update14366"
	self withUpdateLog: 'Issue 5418:	compressedSourceCodeAt: is not used
	http://code.google.com/p/pharo/issues/detail?id=5418
	
Issue 5414:	class FormStub is unused and undocumented
	http://code.google.com/p/pharo/issues/detail?id=5414
	
Issue 5417:	FlatMessageListBrowser error on method removal
	http://code.google.com/p/pharo/issues/detail?id=5417
	
Issue 5160:	sourceCodeAt: vs. sourceMethodAt:
	http://code.google.com/p/pharo/issues/detail?id=5160'.
	self loadTogether: self script627 merge: false.
	self flushCaches.
! !
