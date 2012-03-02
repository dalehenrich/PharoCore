
!MorphicUIManager methodsFor: 'ui process'!
terminateUIProcess
	UIProcess suspend; terminate.
	UIProcess := nil "?"! !
