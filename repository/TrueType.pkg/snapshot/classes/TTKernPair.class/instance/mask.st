
!TTKernPair methodsFor: 'accessing'!
mask
	^mask ifNil:[mask := self class maskFor: left with: right]! !
