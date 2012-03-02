
!FT2Handle class methodsFor: 'private-handle registry'!
knownHandles
	^ KnownHandles ifNil: [ KnownHandles := WeakSet new ]! !
