
MenuItemMorph subclass: #UpdatingMenuItemMorph
	instanceVariableNames: 'wordingProvider wordingSelector enablementSelector wordingArgument'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Menus'!

!UpdatingMenuItemMorph commentStamp: '<historical>' prior: 0!
A menu item whose textual label and whose enablement are updatable.  The wordingProvider provides the current wording, upon being being sent the wordingSelector.

The item can also dynamically update whether or not it should be enabled; to do this, give it an enablementSelector, which is also sent to the wordingProvider..!
