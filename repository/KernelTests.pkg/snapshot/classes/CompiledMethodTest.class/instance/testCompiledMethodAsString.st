
!CompiledMethodTest methodsFor: 'tests - conversion'!
testCompiledMethodAsString
     "self debug: #testCompiledMethodAsString" 

	self shouldnt: [thisContext method asString] raise: Error! !
