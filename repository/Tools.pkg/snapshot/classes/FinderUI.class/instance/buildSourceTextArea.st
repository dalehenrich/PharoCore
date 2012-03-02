
!FinderUI methodsFor: 'items creation'!
buildSourceTextArea

	sourceTextArea := PluggableTextMorph
				on: self
				text: #sourceCode
				accept: #compileSource:notifying:
				readSelection: #autoSelection
				menu: #msgPaneMenu:shifted:.
				
	sourceTextArea askBeforeDiscardingEdits: true.
				
	self updateSourceCode.
	^ sourceTextArea! !
