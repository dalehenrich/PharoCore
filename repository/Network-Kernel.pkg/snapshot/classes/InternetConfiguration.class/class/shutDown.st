
!InternetConfiguration class methodsFor: 'system startup'!
shutDown
	OSPlatform isMacOS
		ifTrue: [ NetworkSystemSettings useHTTPProxy: false ]
	
! !
