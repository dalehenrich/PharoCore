
!HistoryIterator methodsFor: 'accessing'!
recorder
	^ recorder ifNil: [recorder := UndoRedoGroup new]! !
