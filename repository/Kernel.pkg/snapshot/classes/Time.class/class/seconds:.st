
!Time class methodsFor: 'squeak protocol'!
seconds: seconds
	"Answer a Time from midnight."

	^ self basicNew ticks: (Duration seconds: seconds) ticks! !
