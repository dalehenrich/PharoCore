
!Behavior methodsFor: 'accessing instances and variables'!
allSharedPools
	"Answer an ordered collection of the shared pools that the receiver and the receiver's ancestors share."

	^superclass allSharedPools! !
