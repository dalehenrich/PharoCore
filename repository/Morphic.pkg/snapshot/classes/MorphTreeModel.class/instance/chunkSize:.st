
!MorphTreeModel methodsFor: 't - accessing'!
chunkSize: anIntegerOrNil
	self setPageSize: anIntegerOrNil.
	self changed: #chunkSize
! !
