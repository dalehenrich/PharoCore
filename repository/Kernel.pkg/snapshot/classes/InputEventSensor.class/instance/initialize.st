
!InputEventSensor methodsFor: 'initialize-release'!
initialize
	"Initialize the receiver"
	super initialize.
	eventQueue := WaitfreeQueue new.
	mouseButtons := 0.
	mousePosition := 0 @ 0! !
