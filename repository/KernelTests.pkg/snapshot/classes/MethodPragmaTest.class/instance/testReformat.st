
!MethodPragmaTest methodsFor: 'testing-printing-reformating'!
testReformat


	self assert: (DisplayScreen class compiledMethodAt: #actualScreenDepth) getSource string = 'actualScreenDepth
	<primitive: ''primitiveScreenDepth''>
	^ Display depth'.
	

	self shouldnt: [ DisplayScreen class reformatMethodAt: #actualScreenDepth] raise: Error.

	self assert: (DisplayScreen class compiledMethodAt: #actualScreenDepth) getSource string = 'actualScreenDepth
	<primitive: ''primitiveScreenDepth''>
	^ Display depth'.	
! !
