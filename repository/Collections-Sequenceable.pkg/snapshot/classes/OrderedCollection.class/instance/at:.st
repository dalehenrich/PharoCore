
!OrderedCollection methodsFor: 'accessing'!
at: anInteger 
	"Answer my element at index anInteger. at: is used by a knowledgeable
	client to access an existing element"

	self ensureBoundsFrom: anInteger to: anInteger.
	^ array at: anInteger + firstIndex - 1! !
