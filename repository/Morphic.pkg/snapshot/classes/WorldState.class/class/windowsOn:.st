
!WorldState class methodsFor: 'world menu items'!
windowsOn: aBuilder 
	<worldMenu>
	(aBuilder item: #Windows)
		order: 4.0;
		withSeparatorAfter ;
		icon: self theme smallWindowIcon;
		with: [
			(aBuilder item: # 'Collapse all windows') 
				action: [World collapseAll];
				help: 'Reduce all open windows to collapsed forms that only show titles' translated.
			(aBuilder item: # 'Expand all windows') 
				action: [World expandAll];
				help: 'Expand all collapsed windows back to their expanded forms' translated.
			(aBuilder item: # 'Fit all windows') 
				action: [World fitAll];
				help: 'Fit all open windows as visible in World' translated.
			(aBuilder item: #'Close all debuggers') 
				action: [Smalltalk tools debugger closeAllDebuggers].
			(aBuilder item: # 'Send top window to back (\)') 
				action: [SystemWindow sendTopWindowToBack];
				help: 'Make the topmost window become the backmost one, and activate the window just beneath it.' translated.
			(aBuilder item: # 'Move windows onscreen') 
				action: [World bringWindowsFullOnscreen];
				help: 'Make all windows fully visible on the screen' translated.
			(aBuilder item: # 'Delete unchanged windows') 
				action: [World closeUnchangedWindows];
				help: 'Deletes all windows that do not have unsaved text edits.' translated]! !
