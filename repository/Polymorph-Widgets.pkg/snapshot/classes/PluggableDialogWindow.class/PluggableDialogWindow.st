
ModelDependentDialogWindow subclass: #PluggableDialogWindow
	instanceVariableNames: 'statusValue buttons contentMorph applyChangesSelector defaultFocusMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Windows'!

!PluggableDialogWindow commentStamp: 'gvc 8/8/2007 14:08' prior: 0!
Pluggable form of dialog window supporting custom selector on model for applying changes along with configurable content and buttons.!
