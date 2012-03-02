
!WorldState class methodsFor: 'initialization'!
initialize
	"WorldState initialize"

	MinCycleLapse := 20.		"allows 50 frames per second..."
	DeferredUIMessages := SharedQueue new.! !
