
!ArrayTest methodsFor: 'testing'!
testPrinting
	"self debug: #testPrinting"
	
	self assert: literalArray printString = '#(1 true 3 #four)'.
	self assert: (literalArray = (self class evaluatorClass evaluate: literalArray printString)).
	self assert: (selfEvaluatingArray = (self class evaluatorClass evaluate: selfEvaluatingArray printString)).
	self assert: nonSEArray1 printString =  'an Array(1 a Set(1))'.
	self assert: nonSEarray2 printString = '{#Array->Array}'
! !
