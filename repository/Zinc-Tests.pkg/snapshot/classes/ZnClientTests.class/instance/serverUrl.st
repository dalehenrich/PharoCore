
!ZnClientTests methodsFor: 'private'!
serverUrl
	^ ZnUrl new
		scheme: #http;
		host: 'localhost';
		port: self port;
		yourself! !
