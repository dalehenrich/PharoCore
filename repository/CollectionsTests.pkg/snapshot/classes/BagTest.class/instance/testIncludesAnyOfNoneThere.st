
!BagTest methodsFor: 'tests - includes'!
testIncludesAnyOfNoneThere
	"self debug: #testIncludesAnyOfNoneThere'"
	self deny: (self nonEmpty includesAnyOf: self empty).
	self deny: (self nonEmpty includesAnyOf: { 
				(self elementNotIn).
				(self anotherElementNotIn)
			 })! !
