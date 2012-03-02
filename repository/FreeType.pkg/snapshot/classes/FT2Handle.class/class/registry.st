
!FT2Handle class methodsFor: 'private-handle registry'!
registry
	^Registry ifNil: [ Registry := WeakRegistry new]! !
