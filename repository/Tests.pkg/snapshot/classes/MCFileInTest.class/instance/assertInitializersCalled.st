
!MCFileInTest methodsFor: 'testing'!
assertInitializersCalled
	| cvar |
	cvar := self mockClassA cVar.
	self assert: cvar = #initialized! !
