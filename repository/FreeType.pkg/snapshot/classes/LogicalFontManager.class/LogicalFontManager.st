
Object subclass: #LogicalFontManager
	instanceVariableNames: 'fontProviders'
	classVariableNames: ''
	poolDictionaries: 'TextConstants'
	category: 'FreeType-FontManager'!

LogicalFontManager class
	instanceVariableNames: 'current'!

!LogicalFontManager commentStamp: 'LaurentLaffont 6/8/2011 22:20' prior: 0!
I reference all font families available in the  system.

For example:

LogicalFontManager current allFamilies.

FreeTypeFontSelectorDialogWindow new open.
!
