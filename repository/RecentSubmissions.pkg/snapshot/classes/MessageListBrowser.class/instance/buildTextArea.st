
!MessageListBrowser methodsFor: 'items creation'!
buildTextArea

	| text |
	text := self textMorphClass 
		on: self
		text: #textToDisplay
		accept: #compileMethod:
		readSelection: nil
		menu: #msgPaneMenu:shifted:.
	text 
		visible: false;
		askBeforeDiscardingEdits: true.
	^ text! !
