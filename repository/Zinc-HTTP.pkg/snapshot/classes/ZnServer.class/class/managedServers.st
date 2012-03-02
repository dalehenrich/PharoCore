
!ZnServer class methodsFor: 'accessing'!
managedServers
	^ ManagedServers ifNil: [ ManagedServers := IdentitySet new ]! !
