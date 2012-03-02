
!InputEventSensor methodsFor: 'joystick'!
testJoystick: index
	"Sensor testJoystick: 3"

	| f pt buttons status |
	f := Form extent: 110@50.
	[self anyButtonPressed] whileFalse: [
		pt := self joystickXY: index.
		buttons := self joystickButtons: index.
		status :=
'xy: ', pt printString, '
buttons: ', buttons printStringHex.
		f fillWhite.
		status displayOn: f at: 10@10.
		f displayOn: Display at: 10@10.
	].
! !
