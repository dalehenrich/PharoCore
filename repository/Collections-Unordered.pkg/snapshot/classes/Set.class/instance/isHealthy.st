
!Set methodsFor: 'testing'!
isHealthy
	"Test that object hashes match their positions stored in set's array,
	answer true if everything ok, false otherwise
	
	Set allSubInstances select: [:badSet |
		badSet isHealthy not ]
	"
	array withIndexDo: [:elem :i |
		elem ifNotNil: [
			(self scanFor: elem) == i ifFalse: [ ^ false ]
			]
	].
	^ true! !
