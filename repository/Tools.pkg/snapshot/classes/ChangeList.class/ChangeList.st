
CodeHolder subclass: #ChangeList
	instanceVariableNames: 'changeList list listIndex listSelections file lostMethodPointer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Changes'!

!ChangeList commentStamp: 'StephaneDucasse 7/23/2010 21:17' prior: 0!
A ChangeList represents a list of changed methods that reside on a file in fileOut format.  The classes and methods in my list are not necessarily in this image!!  Used as the model when changes are recovered.

It holds three lists:
	changeList - a list of ChangeRecords
	list - a list of one-line printable headers
	listSelections - a list of Booleans (true = selected, false = not selected) multiple OK.
	listIndex 
Items that are removed (removeDoits, remove an item) are removed from all three lists.
Most recently clicked item is the one showing in the bottom pane.!
