
!ClassDescription methodsFor: 'authors'!
authors
	"Returns a bag representing the author frequency based on the latest version of the methods of the receiver."
	"self new authorsgather: Date"

	| br result selectors |
	result := Bag new. 
	self addAuthorsTo: result.
	self class addAuthorsTo: result.
	^ result! !
