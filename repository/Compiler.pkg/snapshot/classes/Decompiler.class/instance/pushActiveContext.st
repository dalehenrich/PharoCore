
!Decompiler methodsFor: 'instruction decoding'!
pushActiveContext

	stack addLast: constructor codeThisContext! !
