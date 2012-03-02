
!MaybeContextInstanceVariableNode methodsFor: 'code generation'!
emitCodeForStore: stack encoder: encoder
	encoder genStoreInstVarLong: index! !
