
!ScriptLoader methodsFor: 'pharo - updates'!
update14256
	"self new update14256"
	self withUpdateLog: 'Issue 5086:	remove #associationDeclareAt:
	http://code.google.com/p/pharo/issues/detail?id=5086
Issue 5090:	remove a call to withAllSuperAndSubclassesDoGently:
	http://code.google.com/p/pharo/issues/detail?id=5090
Issue 5088:	TextStyleTest is empty. Remove
	http://code.google.com/p/pharo/issues/detail?id=5088
Issue 5074:	Move Object>>#copyTwoLevel to finder package
	http://code.google.com/p/pharo/issues/detail?id=5074
Issue 4840:	Schedule>>between:and:do can iterate over the wrong dates.
	http://code.google.com/p/pharo/issues/detail?id=4840
Issue 5089:	clean unused methods related to filter streaming
	http://code.google.com/p/pharo/issues/detail?id=5089'.
	self loadTogether: self script519 merge: false.
	self flushCaches.
! !
