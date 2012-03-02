
!ZnManagingMultiThreadedServer methodsFor: 'accessing'!
lock
	^ lock ifNil: [ lock := Mutex new ]! !
