
!CompositionScanner methodsFor: 'stop conditions'!
space
	"Record left x and character index of the space character just encounted. 
	Used for wrap-around. Answer whether the character has crossed the 
	right edge of the composition rectangle of the paragraph."

	pendingKernX := 0.
	spaceX := destX.
	destX := spaceX + spaceWidth.
	spaceIndex := lastIndex.
	lineHeightAtSpace := lineHeight.
	baselineAtSpace := baseline.
	lastIndex := lastIndex + 1.
	spaceCount := spaceCount + 1.
	destX > rightMargin ifTrue: 	[^self crossedX].
	^false
! !
