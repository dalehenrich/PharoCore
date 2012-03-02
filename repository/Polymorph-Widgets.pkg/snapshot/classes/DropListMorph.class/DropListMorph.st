
MorphicModel subclass: #DropListMorph
	uses: TEnableOnHaloMenu
	instanceVariableNames: 'contentMorph listMorph buttonMorph list listSelectionIndex getListSelector getIndexSelector setIndexSelector getEnabledSelector enabled useSelectionIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets'!

!DropListMorph commentStamp: 'gvc 5/23/2007 14:12' prior: 0!
Displays a selected item and a drop button. When pressed will popup a list to enable changing of the selection. Supports enablement.!
