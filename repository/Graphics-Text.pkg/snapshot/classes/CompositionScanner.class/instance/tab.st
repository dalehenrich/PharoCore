
!CompositionScanner methodsFor: 'stop conditions'!
tab
	"Advance destination x according to tab settings in the paragraph's 
	textStyle. Answer whether the character has crossed the right edge of 
	the composition rectangle of the paragraph."

	pendingKernX := 0.
	destX := textStyle
				nextTabXFrom: destX leftMargin: leftMargin rightMargin: rightMargin.
	destX > rightMargin ifTrue:	[^self crossedX].
	lastIndex := lastIndex + 1.
	^false
! !
