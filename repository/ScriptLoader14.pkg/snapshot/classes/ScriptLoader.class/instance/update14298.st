
!ScriptLoader methodsFor: 'pharo - updates'!
update14298
	"self new update14298"
	self withUpdateLog: 'Issue 5220:	MenuRegistration do not allow menu with more than 2 levels of deapth
	http://code.google.com/p/pharo/issues/detail?id=5220
Issue 5222:	mc slowdown with big package-cache
	http://code.google.com/p/pharo/issues/detail?id=5222
Issue 5182:	Problem in PluggableListMorph
	http://code.google.com/p/pharo/issues/detail?id=5182
	'.
	self loadTogether: self script561 merge: false.
	self flushCaches.
! !
