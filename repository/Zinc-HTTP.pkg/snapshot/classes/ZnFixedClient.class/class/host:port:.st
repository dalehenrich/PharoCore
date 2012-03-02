
!ZnFixedClient class methodsFor: 'instance creation'!
host: hostName port: port
	^ self 
		scheme: #http 
		host: hostName 
		port: port! !
