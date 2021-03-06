
!MultiCompositionScanner methodsFor: 'stop conditions'!
cr
	"Answer true. Set up values for the text line interval currently being 
	composed."

	pendingKernX := 0.
	(lastIndex < text size and: [(text at: lastIndex) = CR and: [(text at: lastIndex+1) = Character lf]]) ifTrue: [lastIndex := lastIndex + 1].
	line stop: lastIndex.
	presentationLine stop: lastIndex - numOfComposition.
	spaceX := destX.
	line paddingWidth: rightMargin - spaceX.
	presentationLine paddingWidth: rightMargin - spaceX.
	^true! !
