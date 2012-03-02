
!Metaclass methodsFor: '*System-Object Storage'!
storeDataOn: aDataStream
	"I don't get stored.  Use a DiskProxy"

	self error: 'use a DiskProxy to store a Class'! !
