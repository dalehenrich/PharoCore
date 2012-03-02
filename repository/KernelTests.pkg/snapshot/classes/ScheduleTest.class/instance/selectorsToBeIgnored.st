
!ScheduleTest methodsFor: 'Coverage'!
selectorsToBeIgnored

	| private | 
	private := #( #printOn: ).

	^ super selectorsToBeIgnored, private
! !
