
!CompiledMethodTest methodsFor: 'tests - comparing'!
testEqualityClassSideMethod
   	| method1 method2 |

	method1 :=  (TestCase class
			compile: 'aMethod'
			classified: nil
			notifying: nil
			trailer: CompiledMethodTrailer empty
			ifFail: [^ nil]) method.

	method2 :=  (TestCase class
			compile: 'aMethod'
			classified: nil
			notifying: nil
			trailer: CompiledMethodTrailer empty
			ifFail: [^ nil]) method.

	self deny: (method1 literalAt: method1 numLiterals) ==  (method2 literalAt: method2 numLiterals).
 	self assert: method1 = method2.

! !
