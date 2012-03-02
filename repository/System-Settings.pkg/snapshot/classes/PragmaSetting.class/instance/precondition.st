
!PragmaSetting methodsFor: 'accessing'!
precondition
	^ precondition ifNil: [precondition := [true]].! !
