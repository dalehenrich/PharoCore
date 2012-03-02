
!PolygonMorph methodsFor: 'attachments'!
boundsSignatureHash
	^(vertices - (self positionInWorld))  hash
! !
