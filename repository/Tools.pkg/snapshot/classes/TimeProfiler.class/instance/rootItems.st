
!TimeProfiler methodsFor: 'as yet unclassified'!
rootItems
	^ rootMessageTally
		ifNil: [#()]
		ifNotNil: [
			self showLeavesOnly 
				ifTrue: [ self leaveItems ]
				ifFalse: [ self rootTallyItems]]! !
