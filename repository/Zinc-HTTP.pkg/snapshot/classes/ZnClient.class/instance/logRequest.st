
!ZnClient methodsFor: 'logging'!
logRequest
	"Log a request that was just written"
	
	self log info: [ 
		'Wrote ', request printString ]! !
