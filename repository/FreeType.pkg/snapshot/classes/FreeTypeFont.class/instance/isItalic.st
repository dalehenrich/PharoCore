
!FreeTypeFont methodsFor: 'testing'!
isItalic
	^(simulatedEmphasis == nil and:[self face isItalic])
		or:[self isSimulatedItalic]! !
