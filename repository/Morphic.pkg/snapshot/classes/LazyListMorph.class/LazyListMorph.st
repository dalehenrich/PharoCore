
Morph subclass: #LazyListMorph
	instanceVariableNames: 'listItems font selectedRow selectedRows listSource maxWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Widgets'!

!LazyListMorph commentStamp: 'efc 8/6/2005 11:34' prior: 0!
The morph that displays the list in a PluggableListMorph.  It is "lazy" because it will only request the list items that it actually needs to display.

I will cache the maximum width of my items in maxWidth to avoid this potentially expensive and frequent computation.!
