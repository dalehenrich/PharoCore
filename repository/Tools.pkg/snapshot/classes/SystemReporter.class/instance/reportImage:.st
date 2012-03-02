
!SystemReporter methodsFor: 'reporting'!
reportImage: aStream
	self header: 'Image' on: aStream.
	aStream 
		nextPutAll: Smalltalk image imageName; cr;
		nextPutAll: SystemVersion current version; cr;
		nextPutAll: Smalltalk image lastUpdateString; cr;
		nextPutAll: ChangeSet current name; cr
! !
