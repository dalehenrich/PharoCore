
!Scanner methodsFor: 'expression types'!
checkpoint
	"Return a copy of all changeable state.  See revertToCheckpoint:"

	^ {self shallowCopy. source shallowCopy. currentComment copy}! !
