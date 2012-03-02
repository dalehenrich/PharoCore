
!Collection methodsFor: 'private'!
errorEmptyCollection
	"Signal a CollectionIsEmpty exception"

	CollectionIsEmpty signalWith: self! !
