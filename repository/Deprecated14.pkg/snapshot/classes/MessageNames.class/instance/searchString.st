
!MessageNames methodsFor: 'search'!
searchString
	"Answer the current searchString, initializing it if need be"

	^ searchString ifNil: [searchString := '']! !
