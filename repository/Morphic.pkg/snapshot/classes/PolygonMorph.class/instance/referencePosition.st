
!PolygonMorph methodsFor: 'geometry etoy'!
referencePosition 
	"Return the current reference position of the receiver"
	^ self valueOfProperty: #referencePosition ifAbsent: [super referencePosition]
! !