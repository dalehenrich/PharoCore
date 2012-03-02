
!StringTest methodsFor: 'tests - includes'!
testIncludesAllOfNoneThere
	"self debug: #testIncludesAllOfNoneThere'"
	self deny: (self empty includesAllOf: self collection).
	self deny: (self nonEmpty includesAllOf: { 
				(self elementNotIn).
				(self anotherElementNotIn)
			 })! !
