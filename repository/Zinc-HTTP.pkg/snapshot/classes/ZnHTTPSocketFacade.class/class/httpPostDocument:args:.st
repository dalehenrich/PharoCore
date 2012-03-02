
!ZnHTTPSocketFacade class methodsFor: 'operations post'!
httpPostDocument: url args: arguments
	^ self 
		httpPostDocument: url 
		args: arguments 
		accept: 'application/octet-stream'! !
