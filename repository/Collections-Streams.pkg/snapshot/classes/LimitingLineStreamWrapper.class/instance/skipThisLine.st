
!LimitingLineStreamWrapper methodsFor: 'accessing'!
skipThisLine

	line := stream nextLine.
	self updatePosition.
! !
