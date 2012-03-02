
MorphTreeModel subclass: #FinderUI
	instanceVariableNames: 'finder forceSearch searchingTextArea sourceTextArea useRegExCheckbox'
	classVariableNames: 'Icon SearchedTextList'
	poolDictionaries: ''
	category: 'Tools-Finder'!

FinderUI class
	instanceVariableNames: 'searchedTextListMaxSize'!

!FinderUI commentStamp: '<historical>' prior: 0!
A FinderUI is a UI used to render a Finder instance.

This tool is used to look for selectors, class, source code or patterns through the system, or through a specified environment!
