
!Rectangle methodsFor: 'transforming'!
newRectFrom: newRectBlock 
	"Track the outline of a new rectangle until mouse button changes.
	newFrameBlock produces each new rectangle from the previous"
	| rect newRect buttonStart buttonNow delay |
	delay := Delay forMilliseconds: 10.
	buttonStart := buttonNow := Sensor anyButtonPressed.
	rect := self.
	Display 
		border: rect
		width: 2
		rule: Form reverse
		fillColor: Color gray.
	[ buttonNow == buttonStart ] whileTrue: 
		[ delay wait.
		[ Sensor nextEvent isNil ] whileFalse.
		buttonNow := Sensor anyButtonPressed.
		newRect := newRectBlock value: rect.
		newRect = rect ifFalse: 
			[ Display 
				border: rect
				width: 2
				rule: Form reverse
				fillColor: Color gray.
			Display 
				border: newRect
				width: 2
				rule: Form reverse
				fillColor: Color gray.
			rect := newRect ] ].
	Display 
		border: rect
		width: 2
		rule: Form reverse
		fillColor: Color gray.
	World activeHand
		newMouseFocus: nil;
		showTemporaryCursor: nil.
	^ rect! !
