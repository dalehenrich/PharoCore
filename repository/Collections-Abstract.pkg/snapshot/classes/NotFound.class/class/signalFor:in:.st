
!NotFound class methodsFor: 'instance creation'!
signalFor: anObject in: aCollection
	"Create and signal a NotFond exception for anObject in aCollection."

	^ self new
		object: anObject;
		collection: aCollection;
		signal! !
