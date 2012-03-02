
!FinderUI methodsFor: 'searching'!
forSelectorsDo: selectorBlock forClassNamesDo: classNamesBlock forSourceDo: sourceBlock forPatternDo: patternBlock forPragmasDo: pragmaBlock

	self currentSearchMode = #Selectors
		ifTrue: [^selectorBlock value].
	self currentSearchMode = #Classes
		ifTrue: [^classNamesBlock value].
	self currentSearchMode = #Source
		ifTrue: [^sourceBlock value].
	self currentSearchMode = #Examples
		ifTrue: [^patternBlock value].
	self currentSearchMode = #Pragmas
		ifTrue: [^pragmaBlock value].! !
