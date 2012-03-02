
!ScriptLoader methodsFor: 'pharo - updates'!
update14280
	"self new update14280"
	self withUpdateLog: '- Issue 5149:	add line in comment of VirtualMachine class>>parameterAt:. ThanksLuc Fabresse and Mariano Martinez-Peck.
	http://code.google.com/p/pharo/issues/detail?id=5149
	
- Issue 5132:	CommentReference SourcedMethodReference MethodReference are now deprecated
	http://code.google.com/p/pharo/issues/detail?id=5132
	
- Issue 2560:	Convenient methods from Grease for Strings. Thanks Sven van Caekenberghe. Part one.
	http://code.google.com/p/pharo/issues/detail?id=2560'.
	self loadTogether: self script543 merge: false.
	self flushCaches.
! !
