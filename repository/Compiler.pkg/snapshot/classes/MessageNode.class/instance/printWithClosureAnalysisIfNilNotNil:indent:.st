
!MessageNode methodsFor: 'printing'!
printWithClosureAnalysisIfNilNotNil: aStream indent: level

	self printWithClosureAnalysisReceiver: receiver ifNilReceiver on: aStream indent: level.

	(arguments first isJust: NodeNil) ifTrue:
		[^self printWithClosureAnalysisKeywords: #ifNotNil:
				arguments: { arguments second }
				on: aStream indent: level].
	(arguments second isJust: NodeNil) ifTrue:
		[^self printWithClosureAnalysisKeywords: #ifNil:
				arguments: { arguments first }
				on: aStream indent: level].
	^self printWithClosureAnalysisKeywords: #ifNil:ifNotNil:
			arguments: arguments
			on: aStream indent: level! !
