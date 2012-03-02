
!ScriptLoader methodsFor: 'pharo - updates'!
update14359
	"self new update14359"
	self withUpdateLog: 'Issue 5395:	Clean Package PolyMorphSpd
	http://code.google.com/p/pharo/issues/detail?id=5395

Issue 5389:	isFreeTypeInstalled is not used
	http://code.google.com/p/pharo/issues/detail?id=5389

Issue 5393:	refresh display when exiting emergency evaluator
	http://code.google.com/p/pharo/issues/detail?id=5393
	
Issue 5384:	remove BlockContext from specialObjectsArray
	http://code.google.com/p/pharo/issues/detail?id=5384'.
	self loadTogether: self script620 merge: false.
	ScriptLoader new deletePackage: 'PolymorphSpd'.
ScriptLoader new deletePackage: 'Finder'.
Smalltalk recreateSpecialObjectsArray.
	.
	self flushCaches.
! !
