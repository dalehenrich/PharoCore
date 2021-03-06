
!TaskListSystemSettings class methodsFor: 'settings'!
taskListSettingOn: aBuilder
	<systemsettings> 
	(aBuilder setting: #keepTaskListOpen)
		label: 'Keep task list open' translated;
		description: 'Whether the tasklist is closed (and the selected window activated) when the command key is released' translated;
		parent: #morphic;
		selector: #keepOpen;
		target: TasklistMorph.
		
	(aBuilder setting: #useHistoricalShortcuts)
		label: 'Use historical shortcuts' translated;
		description: 'If chosen, the shortcuts are cmd-left, cmd-right. If not, they are opt-shift-tab, opt-tab' translated;
		parent: #morphic;
		selector: #useHistoricalShortcuts;
		target: TasklistMorph.! !
