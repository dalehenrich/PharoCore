
!MessageListBrowser methodsFor: 'buttons behavior'!
revertButtonAction 

	(self revertButtonState not and: [self textArea hasUnacceptedEdits not])
		ifTrue: [self compileMethod: self textArea getText asString.]
		ifFalse: [ExampleBuilderMorph new alert: 'The source code must have not been modified']! !
