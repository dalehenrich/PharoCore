
!MorphicUIManager methodsFor: 'debugger'!
buildFieldInspectorFor: aDebugger

	^ PluggableTextMorph 
		on: aDebugger receiverInspector
		text: #contents
		accept: #accept:
		readSelection: #contentsSelection
		menu: #codePaneMenu:shifted:! !
