
!MCPatchOperation methodsFor: 'testing'!
isRemoteNewer
	^ self localDefinition fullTimeStamp < self remoteDefinition fullTimeStamp! !
