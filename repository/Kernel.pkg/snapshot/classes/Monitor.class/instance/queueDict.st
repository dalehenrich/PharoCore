
!Monitor methodsFor: 'private'!
queueDict
	^ queueDict ifNil: [queueDict := IdentityDictionary new].
	! !
