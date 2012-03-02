
!ScriptLoader methodsFor: 'pharo - updates'!
update14057
	"self new update14057"
	self withUpdateLog: '- Issue 4513:	ScrollBar and MorphicModel needs cleaning. Stef and Igor killing tha big monster - Part two. :) 
	http://code.google.com/p/pharo/issues/detail?id=4513
	
Gary it would be good that you check because we have two ways to to a perform: accessor and setValueSelector while only one would be enough. '.
	self loadTogether: self script322 merge: false.
	self flushCaches.
! !
