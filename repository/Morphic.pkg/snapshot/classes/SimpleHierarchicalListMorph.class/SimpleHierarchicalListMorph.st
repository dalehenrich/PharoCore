
ScrollPane subclass: #SimpleHierarchicalListMorph
	instanceVariableNames: 'selectedMorph getListSelector keystrokeActionSelector autoDeselect columns sortingSelector getSelectionSelector setSelectionSelector potentialDropMorph lineColor lastSelection lastKeystrokeTime lastKeystrokes searchedElement'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Explorer'!

SimpleHierarchicalListMorph class
	instanceVariableNames: 'expandedForm notExpandedForm'!

!SimpleHierarchicalListMorph commentStamp: 'MarcusDenker 12/12/2009 07:36' prior: 0!
Display a hierarchical list of items.  Each item should be wrapped with a ListItemWrapper.

For a simple example, look at submorphsExample.  For beefier examples, look at ObjectExplorer or FileList.!
