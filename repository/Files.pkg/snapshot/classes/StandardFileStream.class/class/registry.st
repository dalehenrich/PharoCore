
!StandardFileStream class methodsFor: 'registry'!
registry
	^Registry ifNil: [Registry := WeakRegistry new]
! !
