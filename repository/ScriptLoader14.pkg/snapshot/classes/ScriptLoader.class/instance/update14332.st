
!ScriptLoader methodsFor: 'pharo - updates'!
update14332
	"self new update14332"
	self withUpdateLog: '- Issue 5283:	Little refactor in PluggaleListMorph. Thanks  Benjamin.VanRyseghem.
	http://code.google.com/p/pharo/issues/detail?id=5283
-  Issue 5298:	Infinite Loop in MenuRegistration.Thanks  Benjamin.VanRyseghem.
	http://code.google.com/p/pharo/issues/detail?id=5298
- Issue 5288:	Introduce a new method in the searching method of PluggableListMorph. Thanks  Benjamin.VanRyseghem.
	http://code.google.com/p/pharo/issues/detail?id=5288'.
	self loadTogether: self script593 merge: false.
	self flushCaches.
! !
