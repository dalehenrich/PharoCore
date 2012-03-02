
ObjectExplorerWrapper subclass: #PointerExplorerWrapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Explorer'!

!PointerExplorerWrapper commentStamp: 'avi 8/21/2004 19:58' prior: 0!
A subclass of ObjectExplorerWrapper for use with PointerExplorer.  #contents is overridden to work backwards: it returns wrappers for the objects pointing to item rather than for the objects that item points to.!
