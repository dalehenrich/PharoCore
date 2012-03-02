
!SimpleTestResourceCircular1 class methodsFor: 'accessing'!
resources
	"Circular prereq:  C wants C1 which wants C."
	
	^Array with: SimpleTestResourceCircular! !
