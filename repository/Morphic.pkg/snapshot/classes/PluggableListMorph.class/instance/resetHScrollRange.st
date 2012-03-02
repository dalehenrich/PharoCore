
!PluggableListMorph methodsFor: 'scroll cache'!
resetHScrollRange

	hScrollRangeCache := nil.
	self deriveHScrollRange.
! !
