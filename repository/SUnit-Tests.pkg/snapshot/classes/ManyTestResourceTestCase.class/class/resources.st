
!ManyTestResourceTestCase class methodsFor: 'accessing'!
resources
	^super resources
		, (Array with: SimpleTestResourceA with: SimpleTestResourceB)! !
