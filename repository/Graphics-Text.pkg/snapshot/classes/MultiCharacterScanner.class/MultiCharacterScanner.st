
Object subclass: #MultiCharacterScanner
	instanceVariableNames: 'destX lastIndex xTable destY stopConditions text textStyle alignment leftMargin rightMargin font line runStopIndex spaceCount spaceWidth emphasisCode kern indentationLevel wantsColumnBreaks presentation presentationLine numOfComposition baselineY firstDestX pendingKernX lastWidth'
	classVariableNames: 'DefaultStopConditions NilCondition PaddedSpaceCondition SpaceCondition'
	poolDictionaries: 'TextConstants'
	category: 'Graphics-Text'!
