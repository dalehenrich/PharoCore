
!Morph methodsFor: 'testing'!
stepTime
	"Answer the desired time between steps in milliseconds. This is just a recommendation; there is absolutely no guarantee how often #step will actually be called. This default implementation requests that the 'step' method be called once every second."

	^ 1000 ! !
