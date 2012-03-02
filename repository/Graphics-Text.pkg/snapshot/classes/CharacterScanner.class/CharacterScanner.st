
Object subclass: #CharacterScanner
	instanceVariableNames: 'destX lastIndex xTable destY stopConditions text textStyle alignment leftMargin rightMargin font line runStopIndex spaceCount spaceWidth emphasisCode kern indentationLevel wantsColumnBreaks pendingKernX'
	classVariableNames: 'DefaultStopConditions NilCondition PaddedSpaceCondition SpaceCondition'
	poolDictionaries: 'TextConstants'
	category: 'Graphics-Text'!

!CharacterScanner commentStamp: '<historical>' prior: 0!
My instances hold the state associated with scanning text. My subclasses scan characters for specified purposes, such as computing a CharacterBlock or placing characters into Forms.!
