
!LiteralVariableNode methodsFor: 'code generation'!
emitCodeForValue: stack encoder: encoder
	stack push: 1.
	^encoder genPushLiteralVar: index! !
