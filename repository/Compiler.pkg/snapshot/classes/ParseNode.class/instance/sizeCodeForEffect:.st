
!ParseNode methodsFor: 'code generation'!
sizeCodeForEffect: encoder

	^(self sizeCodeForValue: encoder) + encoder sizePop! !
