
!ObjectStringConverter methodsFor: 'initialize-release'!
initialize
	"Initialize the receiver."

	super initialize.
	self
		objectTransformBlock: [:obj | obj];
		stringTransformBlock: [:string | string]! !
