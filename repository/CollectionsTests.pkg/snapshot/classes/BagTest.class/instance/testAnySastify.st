
!BagTest methodsFor: 'as yet unclassified'!
testAnySastify

	self assert: ( self collection anySatisfy: [:each | each = self element]).
	self deny: (self collection anySatisfy: [:each | each isString]).! !
