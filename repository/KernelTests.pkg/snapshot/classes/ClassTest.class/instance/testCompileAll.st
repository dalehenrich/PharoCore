
!ClassTest methodsFor: 'testing - compiling'!
testCompileAll

	self shouldnt: [ClassTest compileAll] raise: Error.! !
