
!Class methodsFor: 'pool variables'!
sharedPools
	"Answer an orderedCollection  of the shared pools declared in the receiver."

	sharedPools == nil
		ifTrue: [^OrderedCollection new]
		ifFalse: [^sharedPools]! !
