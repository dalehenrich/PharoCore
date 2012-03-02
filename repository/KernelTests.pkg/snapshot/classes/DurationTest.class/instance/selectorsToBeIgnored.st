
!DurationTest methodsFor: 'coverage'!
selectorsToBeIgnored

	| private | 
	private := #( #printOn: ).

	^ super selectorsToBeIgnored, private
! !
