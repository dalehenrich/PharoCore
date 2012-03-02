
!FlatMessageListBrowser methodsFor: 'items creation'!
buildTextArea

	
	textArea := self textMorphClass
		on: self
		text: #textToDisplay
		accept: #compileMethod:notifying:
		readSelection: #highlightSearchedString
		menu: #msgPaneMenu:shifted:.
	textArea 
		font: StandardFonts codeFont;
		visible: false;
		askBeforeDiscardingEdits: true.
	^ textArea! !
