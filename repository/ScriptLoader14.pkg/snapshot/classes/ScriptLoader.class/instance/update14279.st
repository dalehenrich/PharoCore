
!ScriptLoader methodsFor: 'pharo - updates'!
update14279
	"self new update14279"
	self withUpdateLog: '- Issue 5157:	Finder > Class > right-click > Hierarchy opens not on Class but on FinderClassNode. Tx Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=5157

- Issue 5151:	Recategorization of PanelMorph. Thanks Benjamin van Ryseghem. There is no useless cleans. Even small steps are cool and important.
	http://code.google.com/p/pharo/issues/detail?id=5151
	
- Issue 5154:	It would be great to have a setting to allow the Debugger to open centered and be 3/4 of screen. Thanks Alain Plantec.
http://code.google.com/p/pharo/issues/detail?id=5154

- Issue 5148:	LimitNumberOfEntriesInZnMultiValueDictionary. Thanks Sven van Caekenberghe. 
	http://code.google.com/p/pharo/issues/detail?id=5148
'.
	self loadTogether: self script542 merge: false.
	self flushCaches.
! !
