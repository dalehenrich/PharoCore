
!Time class methodsFor: 'ansi protocol'!
now
	"Answer a Time representing the time right now - this is a 24 hour clock."

	^ self seconds: self totalSeconds \\ 86400.
! !
