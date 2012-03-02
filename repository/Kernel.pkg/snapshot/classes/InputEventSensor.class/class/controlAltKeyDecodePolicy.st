
!InputEventSensor class methodsFor: 'settings'!
controlAltKeyDecodePolicy
	"#FullMatching #PartialMatching #Swapped #NoMatching"
	^  ControlAltKeyDecodePolicy ifNil: [ControlAltKeyDecodePolicy := #FullMatching]! !
