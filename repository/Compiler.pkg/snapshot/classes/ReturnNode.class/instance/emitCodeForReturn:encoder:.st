
!ReturnNode methodsFor: 'code generation'!
emitCodeForReturn: stack encoder: encoder

	expr emitCodeForReturn: stack encoder: encoder.
	pc := encoder methodStreamPosition! !
