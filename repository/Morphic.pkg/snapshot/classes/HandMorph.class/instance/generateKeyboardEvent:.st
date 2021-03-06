
!HandMorph methodsFor: 'private events'!
generateKeyboardEvent: evtBuf
	"Generate the appropriate mouse event for the given raw event buffer"

	| buttons modifiers type pressType stamp charCode keyValue keyEvent |
	stamp := evtBuf second.
	stamp = 0 ifTrue: [stamp := Time millisecondClockValue].
	pressType := evtBuf fourth.
	pressType = EventKeyDown
		ifTrue: [
			type := #keyDown.
			lastKeyScanCode := evtBuf third].
	pressType = EventKeyUp ifTrue: [type := #keyUp].
	pressType = EventKeyChar ifTrue: [
		type := #keystroke].
	modifiers := evtBuf fifth.
	buttons := modifiers bitShift: 3.
	keyValue := evtBuf third. 
	charCode := evtBuf sixth.
	
	"Adjustments to provide consistent key value data for different VM's:
	- charCode always contains unicode code point.
	 - keyValue contains 0 if input is outside legacy range"
	"If there is no unicode data in the event, assume keyValue contains a correct (<256) Unicode codepoint, and use that"
	(charCode isNil
		or: [charCode = 0])
		ifTrue: [charCode := keyValue].
	"If charCode is not single-byte, we definately have Unicode input. Nil keyValue to avoid garbage values from som VMs."	
	charCode > 255 ifTrue: [keyValue := 0].

	type = #keystroke
		ifTrue: [combinedChar
			ifNil: [
				| peekedEvent |
				peekedEvent := Sensor peekEvent.
				(peekedEvent notNil
					and: [peekedEvent fourth = EventKeyDown])
					ifTrue: [
						(CombinedChar isCompositionCharacter: charCode)
							ifTrue: [
								combinedChar := CombinedChar new.
								combinedChar simpleAdd: charCode asCharacter.
								(combinedChar combinesWith: peekedEvent third asCharacter)
									ifTrue: [^nil].
								]]]
			ifNotNil: [
				(combinedChar simpleAdd: charCode asCharacter)
					ifTrue: [charCode := combinedChar combined charCode].
				combinedChar := nil]].

	(type = #keystroke and: [(buttons anyMask: 16) 
			and: [charCode = 30 or: [charCode = 31]]])
		ifTrue: [^MouseWheelEvent new 
					setType: #mouseWheel
					position: lastMouseEvent cursorPoint
					direction: (charCode = 30 ifTrue: [#up] ifFalse: [#down])
					buttons: buttons
					hand: self
					stamp: stamp].	
	keyEvent := KeyboardEvent new
		setType: type
		buttons: buttons
		position: self position
		keyValue: keyValue
		charCode: charCode
		hand: self
		stamp: stamp.
	keyEvent scanCode: lastKeyScanCode.
	^keyEvent
! !
