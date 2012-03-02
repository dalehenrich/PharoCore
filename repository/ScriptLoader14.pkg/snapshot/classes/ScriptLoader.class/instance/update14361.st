
!ScriptLoader methodsFor: 'pharo - updates'!
update14361
	"self new update14361"
	self withUpdateLog: 'Issue 5400:	Remove reference to #blockCopy: from SpecialObjectsArray
	http://code.google.com/p/pharo/issues/detail?id=5400
Issue 5399:	remove two empty Multiligual packages
	http://code.google.com/p/pharo/issues/detail?id=5399
Issue 5193:	Nuke BorderedBlahBlahMorph
	http://code.google.com/p/pharo/issues/detail?id=5193'.
	self loadTogether: self script622 merge: false.
	Smalltalk recreateSpecialObjectsArray.
ScriptLoader new unloadPackage: 'Multilingual-Display'.
ScriptLoader new unloadPackage: 'Multilingual-Scanning'.
ScriptLoader new cleanUpForRelease.
	self flushCaches.
! !
