
!MCSnapshotBrowserTest methodsFor: 'testing'!
testAnnotationPane
	| oldPref |
	oldPref := MCCodeTool showAnnotationPane.

	MCCodeTool showAnnotationPane: false.
	morph := model buildWindow.
	self assert: (self morphsOfClass: TextMorph) size = 1.

	MCCodeTool showAnnotationPane: true.
	morph := model buildWindow.
	self assert: (self morphsOfClass: TextMorph) size = 2.

	MCCodeTool showAnnotationPane: oldPref! !
