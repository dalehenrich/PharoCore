
!Set methodsFor: 'testing'!
integrityCheck
	"test that objects hashes mathing their positions stored in set's array,
	answer true if everything ok, false otherwise
	
	
	Set allSubInstances select: [:badSet |
		badSet integrityCheck not ]
	"
	

	array withIndexDo: [:elem :i |
		
		elem ifNotNil: [
			(self scanFor: elem) == i ifFalse: [ ^ false ]
			]
	].

	^ true! !
