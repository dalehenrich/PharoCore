
!TRemoveTest methodsFor: 'tests - remove'!
testRemoveElementThatExists
	"self debug: #testRemoveElementThatExists"
	| el res |
	el := self nonEmptyWithoutEqualElements anyOne.
	self 
		shouldnt: [ res := self nonEmptyWithoutEqualElements remove: el ]
		raise: Error.
	self assert: res == el! !
