
ModelDependentDialogWindow subclass: #PopupChoiceDialogWindow
	instanceVariableNames: 'choice labels lines choicesMorph choiceMenus filter filterMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Windows'!

!PopupChoiceDialogWindow commentStamp: 'gvc 5/18/2007 12:26' prior: 0!
Presents a list of options in a popup format. If the list is long it will split into multiple columns. If very long, the columns will be scrollable. Maximum extent of the content area is half the display extent.!
