
!WeakSetTest methodsFor: 'testing'!
testAddNil

	| ws |
	ws := WeakSet new.
	self shouldnt: [ws add: nil] raise: Error.
	
	self assert: (ws includes: nil)! !
