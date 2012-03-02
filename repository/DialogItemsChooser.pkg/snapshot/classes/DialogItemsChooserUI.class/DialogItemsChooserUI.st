
DialogWindow subclass: #DialogItemsChooserUI
	instanceVariableNames: 'dialogItemsChooser selectedItems selectedItemsModel unselectedItems unselectedItemsModel unselectedItemsSearchingString selectedItemsSearchingString unselectedItemsTextArea selectedItemsTextArea unselectedSelection selectedSelectionIndex selectedSelectionList unselectedSelectionList unselectedSelectionIndex selectedItemsList'
	classVariableNames: 'AlreadySearchedSelectedItemsList AlreadySearchedUnselectedItemsList'
	poolDictionaries: ''
	category: 'DialogItemsChooser-UI'!

DialogItemsChooserUI class
	instanceVariableNames: 'alreadySearchedSelectedItemsListMaxSize alreadySearchedUnselectedItemsListMaxSize'!

!DialogItemsChooserUI commentStamp: 'BenjaminVanRyseghem 9/17/2010 00:20' prior: 0!
unselectedItems is the original list to search in

selectItems is the list of the selected items!
