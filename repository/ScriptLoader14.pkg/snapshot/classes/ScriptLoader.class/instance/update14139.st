
!ScriptLoader methodsFor: 'pharo - updates'!
update14139
	"self new update14139"
	self withUpdateLog: 'Issue 4548:	Explorer wont browse the explored class
	http://code.google.com/p/pharo/issues/detail?id=4548
	
Issue 4786:	Tests for System-Support and added Behavior>>referencedClasses
	http://code.google.com/p/pharo/issues/detail?id=4786
	
Issue 4789:	Improve the way morphs communicate with model
	http://code.google.com/p/pharo/issues/detail?id=4789
	
'.
	self loadTogether: self script403 merge: false.
	self flushCaches.
! !
