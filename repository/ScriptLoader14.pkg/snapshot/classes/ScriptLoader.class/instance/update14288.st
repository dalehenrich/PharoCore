
!ScriptLoader methodsFor: 'pharo - updates'!
update14288
	"self new update14288"
	self withUpdateLog: '- Issue 5163: Bug in #pointsTo:
	Thanks Mariano Martinez-Peck, Levente Uzonyi and Henrik Johansen
	http://code.google.com/p/pharo/issues/detail?id=5163

- Issue 5116: Reintroduce the new MethodDictionary >> rehash since it is working
	Thanks Mariano Martinez-Peck  and Henrik Johansen
	http://code.google.com/p/pharo/issues/detail?id=5116'.
	self loadTogether: self script551 merge: false.
	self flushCaches.
! !
