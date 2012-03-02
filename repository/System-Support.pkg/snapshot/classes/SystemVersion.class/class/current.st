
!SystemVersion class methodsFor: 'accessing'!
current
	Current ifNil: [Current := SystemVersion new].
	^Current! !
