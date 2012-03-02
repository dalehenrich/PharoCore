
!ZnClient methodsFor: 'logging'!
logResponse
	"Log a response that was just read"
	
	self log info: [ 
		'Read ', response printString ]! !
