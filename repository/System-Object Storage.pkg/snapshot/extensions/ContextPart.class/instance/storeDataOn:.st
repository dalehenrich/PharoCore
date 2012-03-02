
!ContextPart methodsFor: '*System-Object Storage'!
storeDataOn: aDataStream
	"Contexts are not allowed go to out in DataStreams."

	self error: 'This Context was not included in the stream'.

	^ nil! !
