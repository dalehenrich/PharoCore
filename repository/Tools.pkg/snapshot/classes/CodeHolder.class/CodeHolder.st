
StringHolder subclass: #CodeHolder
	instanceVariableNames: 'currentCompiledMethod contentsSymbol'
	classVariableNames: 'AnnotationRequests BrowseWithPrettyPrint DecorateBrowserButtons DiffsInChangeList DiffsWithPrettyPrint OptionalButtons ShowAnnotationPane SmartUpdating'
	poolDictionaries: ''
	category: 'Tools-Base'!

!CodeHolder commentStamp: '<historical>' prior: 0!
An ancestor class for all models which can show code.  Eventually, much of the code that currently resides in StringHolder which only applies to code-holding StringHolders might get moved down here.!
