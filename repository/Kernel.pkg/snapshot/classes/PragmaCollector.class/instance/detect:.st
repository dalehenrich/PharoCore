
!PragmaCollector methodsFor: 'enumerating'!
detect: aBlock
	^ self collected detect: aBlock ifNone:[]
	! !
