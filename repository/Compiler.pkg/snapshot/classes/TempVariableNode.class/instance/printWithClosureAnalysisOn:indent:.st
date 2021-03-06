
!TempVariableNode methodsFor: 'printing'!
printWithClosureAnalysisOn: aStream indent: level 

	aStream nextPutAll: name.
	readingScopes notNil ifTrue:
		[(readingScopes inject: Set new into: [:them :reads| them addAll: reads. them]) asSortedCollection do:
			[:location|
			aStream space; nextPut: $r; nextPut: $@; print: location]].
	writingScopes notNil ifTrue:
		[(writingScopes inject: Set new into: [:them :writes| them addAll: writes. them]) asSortedCollection do:
			[:location|
			aStream space; nextPut: $w; nextPut: $@; print: location]]! !
