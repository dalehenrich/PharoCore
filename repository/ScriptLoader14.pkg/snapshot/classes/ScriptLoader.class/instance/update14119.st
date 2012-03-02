
!ScriptLoader methodsFor: 'pharo - updates'!
update14119
	"self new update14119"
	self withUpdateLog: '- Issue 4760:	Shout default to shout only if shoutAboutToStyle is defined. Thanks Alain Plantec. 
	http://code.google.com/p/pharo/issues/detail?id=4760
- Issue 4756:	More cleaning of ImageSegment. Thanks Mariano Martinez-Peck.
	http://code.google.com/p/pharo/issues/detail?id=4756
- Issue 4697:	OrderedCollectionInspector>>fieldList bug in debugger. Thanks Mike Roberts.
	http://code.google.com/p/pharo/issues/detail?id=4697'.
	self loadTogether: self script383 merge: false.
	self flushCaches.
! !
