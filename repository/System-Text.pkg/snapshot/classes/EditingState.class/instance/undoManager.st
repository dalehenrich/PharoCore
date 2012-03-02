
!EditingState methodsFor: 'accessing'!
undoManager

	^ undoManager ifNil: [ undoManager := HistoryIterator new].
! !
