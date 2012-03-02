
!ExternalSemaphoreTable class methodsFor: 'accessing'!
unregisterExternalObject: anObject
	ProtectRemove critical: [self safelyUnregisterExternalObject: anObject]
! !
