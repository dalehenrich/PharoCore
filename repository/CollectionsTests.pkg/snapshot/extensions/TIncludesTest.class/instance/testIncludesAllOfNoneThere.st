
!TIncludesTest methodsFor: 'tests - includes'!
testIncludesAllOfNoneThere
	"self debug: #testIncludesAllOfNoneThere'"
	self deny: (self empty includesAllOf: self nonEmpty ).
	self deny: (self nonEmpty includesAllOf: { self elementNotIn. self anotherElementNotIn })! !
