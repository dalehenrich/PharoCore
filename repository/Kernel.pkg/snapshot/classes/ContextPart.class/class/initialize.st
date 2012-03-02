
!ContextPart class methodsFor: 'simulation'!
initialize

	"A unique object to be returned when a primitive fails during simulation"
	PrimitiveFailToken := Object new.
	self initializeTryNamedPrimitiveTemplateMethod! !
