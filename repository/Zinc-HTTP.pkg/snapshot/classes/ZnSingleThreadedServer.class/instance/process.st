
!ZnSingleThreadedServer methodsFor: 'accessing'!
process
	"Return the process that is running my main listening loop.
	Will be nil when I am not running"
	
	^ process! !