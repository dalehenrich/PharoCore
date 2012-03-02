
!ZnMultiPartFormDataEntity methodsFor: 'accessing'!
addPart: mimePart
	self invalidateRepresentation.
	self parts add: mimePart! !
