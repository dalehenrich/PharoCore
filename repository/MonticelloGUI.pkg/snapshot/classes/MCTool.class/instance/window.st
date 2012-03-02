
!MCTool methodsFor: 'morphic ui'!
window
	^ morph ifNil: [morph := self buildWindow]! !
