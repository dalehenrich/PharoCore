
!GradientFillStyle class methodsFor: 'initialization'!
initPixelRampCache
	"Create an LRUCache to use for accessing pixel ramps."
	"Details: when a new pixel ramp is needed, a temporary GradientFillStyle is created so that it can be used to create a new pixel ramp"

	^PixelRampCache := LRUCache size: 32 factory: [:key| 
		(GradientFillStyle new colorRamp: key) computePixelRampOfSize: 512]  ! !
