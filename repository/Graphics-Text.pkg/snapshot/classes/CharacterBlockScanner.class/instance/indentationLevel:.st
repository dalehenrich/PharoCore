
!CharacterBlockScanner methodsFor: 'scanning'!
indentationLevel: anInteger 
	super indentationLevel: anInteger.
	nextLeftMargin := leftMargin.
	indentationLevel timesRepeat: 
		[ nextLeftMargin := textStyle 
			nextTabXFrom: nextLeftMargin
			leftMargin: leftMargin
			rightMargin: rightMargin ]! !
