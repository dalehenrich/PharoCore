
!FreeTypeFont methodsFor: 'testing'!
isRegular
	^(simulatedEmphasis == nil and:[self face isRegular])
		or: [self isSimulatedRegular]! !
