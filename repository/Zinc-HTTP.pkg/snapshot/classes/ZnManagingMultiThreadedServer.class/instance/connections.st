
!ZnManagingMultiThreadedServer methodsFor: 'accessing'!
connections
	^ connections ifNil: [ connections := OrderedCollection new ]! !
