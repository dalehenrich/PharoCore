
!MCPatchOperation methodsFor: 'testing'!
isLocalNewer
	^ self localDefinition fullTimeStamp > self remoteDefinition fullTimeStamp! !
