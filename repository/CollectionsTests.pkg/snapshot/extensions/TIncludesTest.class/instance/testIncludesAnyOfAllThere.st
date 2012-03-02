
!TIncludesTest methodsFor: 'tests - includes'!
testIncludesAnyOfAllThere
	"self debug: #testIncludesAnyOfAllThere'"
	self deny: (self nonEmpty includesAnyOf: self empty).
	self assert: (self nonEmpty includesAnyOf: { self nonEmpty anyOne }).
	self assert: (self nonEmpty includesAnyOf: self nonEmpty).! !
