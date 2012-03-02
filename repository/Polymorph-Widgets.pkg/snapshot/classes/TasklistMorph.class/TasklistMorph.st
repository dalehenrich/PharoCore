
Morph subclass: #TasklistMorph
	instanceVariableNames: 'tasks taskList preview'
	classVariableNames: 'KeepOpen UseHistoricalShortcuts'
	poolDictionaries: ''
	category: 'Polymorph-Widgets'!

!TasklistMorph commentStamp: 'gvc 5/18/2007 11:19' prior: 0!
Themed task list/switcher to select the topmost window. Use cmd + left or right arrows (not ideal but the os typically handles cmd + tab/shift-tab).
On Linux, release of the command key is not detected (vm issue), so press and release cmd again or move the mouse!!!
