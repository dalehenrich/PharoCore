
!TIncludesTest methodsFor: 'tests - includes'!
testIncludesAllOfAllThere
	"self debug: #testIncludesAllOfAllThere'"
	self assert: (self empty includesAllOf: self empty).
	self assert: (self nonEmpty includesAllOf: { self nonEmpty anyOne }).
	self assert: (self nonEmpty includesAllOf: self nonEmpty).! !
