
!OrderedCollectionTest methodsFor: 'tests - includes'!
testIncludesSubstringAnywhere
	"self debug: #testIncludesSubstringAnywher'"
	self assert: (self empty includesAllOf: self empty).
	self assert: (self nonEmpty includesAllOf: {  (self nonEmpty anyOne)  }).
	self assert: (self nonEmpty includesAllOf: self nonEmpty)! !
