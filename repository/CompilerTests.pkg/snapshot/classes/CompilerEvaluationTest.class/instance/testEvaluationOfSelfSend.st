
!CompilerEvaluationTest methodsFor: 'testing'!
testEvaluationOfSelfSend
	"Tests the evaluation of an inherited method that uses super send
	and self send"
	"self debug: #testEvaluationOfSelfSend"
	| result |
	result := Compiler new
				evaluate: (self method copyFrom: 6 to: self method size)
				in: self model doItContext
				to: self model doItReceiver
				notifying: nil 
				ifFail: [^ #failedDoit]
				logged: true.
	self assert: result = (6250 / 3)! !
