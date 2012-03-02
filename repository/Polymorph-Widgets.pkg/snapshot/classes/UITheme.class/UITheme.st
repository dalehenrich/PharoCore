
Object subclass: #UITheme
	instanceVariableNames: 'settings forms soundTheme focusIndicator'
	classVariableNames: 'Builder Current'
	poolDictionaries: ''
	category: 'Polymorph-Widgets-Themes'!

UITheme class
	instanceVariableNames: 'defaultSettings'!

!UITheme commentStamp: 'StephaneDucasse 10/2/2009 16:15' prior: 0!
Common superclass for User Interface themes. Provides methods for creating new morphs in a standard way, various "services" like a file dialog, message dialogs etc. and also methods for customising aspects of the appearance of various morphs.
Though conceptually abstract, no code is "missing". Subclasses, therefore, should override the aspects they wish to change.

UITheme exampleBasicControls
UITheme exampleBuilder
UITheme exampleColorControls
UITheme exampleDialogs
UITheme exampleGroups
UITheme exampleOtherControls
UITheme exampleWindowWithToolbars!
