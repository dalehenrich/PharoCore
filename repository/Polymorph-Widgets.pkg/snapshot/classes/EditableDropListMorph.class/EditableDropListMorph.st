
DropListMorph subclass: #EditableDropListMorph
	instanceVariableNames: 'addToListSel content'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Polymorph-Widgets'!

!EditableDropListMorph commentStamp: 'LaurentLaffont 3/31/2011 21:04' prior: 0!
I'm a DropListMorph which content can be modified.

Try:

(EditableDropListMorph
        on: [#(one two three)]
        list: #value
        selected: nil
        changeSelected: nil) openInWindow extent: 400@20.!
