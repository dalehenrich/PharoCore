
!FSInteractiveResolver methodsFor: 'resolving'!
resolve: origin
	^ cache at: origin ifAbsent: [self unknownOrigin: origin]
	
! !
