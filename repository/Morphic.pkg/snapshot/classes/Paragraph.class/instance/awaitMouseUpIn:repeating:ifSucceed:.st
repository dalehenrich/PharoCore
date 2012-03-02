
!Paragraph methodsFor: 'private'!
awaitMouseUpIn: box repeating: doBlock ifSucceed: succBlock
	"The mouse has gone down in box; track the mouse, inverting the box while it's within, and if, on mouse up, the cursor was still within the box, execute succBlock.  While waiting for the mouse to come up, repeatedly execute doBlock. 5/11/96 sw
	6/10/96 sw: call new method that adds extra feature"

	| p inside lightForm darkForm isLight |

	p := Sensor cursorPoint.
	inside := box insetBy: 1.
	isLight := true.
	lightForm := Form fromDisplay: inside.
	darkForm := lightForm deepCopy reverse.
	[Sensor anyButtonPressed] whileTrue:
		[doBlock value.
		(box containsPoint: (p := Sensor cursorPoint))
			ifTrue: [
					isLight ifTrue: 
						[isLight := false.
						darkForm displayAt: inside origin]]
			ifFalse: [isLight ifFalse:
						[isLight := true.
						lightForm displayAt: inside origin]]].
	(box containsPoint: p)
		ifTrue: [lightForm displayAt: inside origin.
				^ succBlock value]
! !
