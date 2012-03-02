
!ParseNode methodsFor: 'printing'!
printWithClosureAnalysis

	^String streamContents: [:str| self printWithClosureAnalysisOn: str]! !
