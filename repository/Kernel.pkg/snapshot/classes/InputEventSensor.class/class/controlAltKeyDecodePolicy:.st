
!InputEventSensor class methodsFor: 'settings'!
controlAltKeyDecodePolicy: aSymbol
	"#FullMatching #PartialMatching #Swapped #NoMatching"
	ControlAltKeyDecodePolicy ~= aSymbol ifTrue: [
		ControlAltKeyDecodePolicy := aSymbol.
		self installKeyDecodeTable]! !
