
!TestCase class methodsFor: 'history'!
lastStoredRun
	^ ((Dictionary new) add: (#failures->#()); add: (#passed->#()); add: (#errors->#()); yourself)! !
