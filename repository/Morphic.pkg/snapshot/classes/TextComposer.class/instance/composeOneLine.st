
!TextComposer methodsFor: 'as yet unclassified'!
composeOneLine
	| rectangles |
	rectangles := theContainer rectanglesAt: currentY height: defaultLineHeight.
	rectangles notEmpty 
		ifTrue: [(self composeAllRectangles: rectangles) ifNil: [^nil]]
		ifFalse: [currentY := currentY + defaultLineHeight].
	self checkIfReadyToSlide! !