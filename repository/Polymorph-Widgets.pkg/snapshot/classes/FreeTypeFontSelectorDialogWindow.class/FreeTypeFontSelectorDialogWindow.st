
AbstractFontSelectorDialogWindow subclass: #FreeTypeFontSelectorDialogWindow
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Windows'!

!FreeTypeFontSelectorDialogWindow commentStamp: 'LaurentLaffont 4/15/2011 20:19' prior: 0!
I'm a dialog to select a font. 

Usage example:

|fontSelector|
fontSelector := FreeTypeFontSelectorDialogWindow new.
UITheme builder openModal: fontSelector.
fontSelector selectedFont inspect.!
