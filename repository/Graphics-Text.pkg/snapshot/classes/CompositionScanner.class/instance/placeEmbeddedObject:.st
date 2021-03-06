
!CompositionScanner methodsFor: 'stop conditions'!
placeEmbeddedObject: anchoredMorph 
	"Workaround: The following should really use #textAnchorType"
	| descent |
	anchoredMorph relativeTextAnchorPosition ifNotNil: [ ^ true ].
	(super placeEmbeddedObject: anchoredMorph) ifFalse: 
		[ "It doesn't fit"
		"But if it's the first character then leave it here"
		lastIndex < line first ifFalse: 
			[ line stop: lastIndex - 1.
			^ false ] ].
	descent := lineHeight - baseline.
	lineHeight := lineHeight max: anchoredMorph height.
	baseline := lineHeight - descent.
	line stop: lastIndex.
	^ true! !
