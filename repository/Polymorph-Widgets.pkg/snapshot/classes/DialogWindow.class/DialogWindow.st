
StandardWindow subclass: #DialogWindow
	instanceVariableNames: 'cancelled isResizeable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Windows'!

!DialogWindow commentStamp: 'gvc 5/18/2007 13:26' prior: 0!
Dialog style window with no window controls (expand, collapse etc). Usually opened modally (the morph that is used to modally open determines the modal scope, use of World implies "system modal").
Designed to be subclassed with content.
Supports Escape key for cancel and Enter key for default button.!
