
!TextAlignment class methodsFor: 'utils'!
alignmentSymbol: alignmentCode
	^#(leftFlush rightFlush centered justified) at: (alignmentCode + 1)! !
