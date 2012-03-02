
MorphicModel subclass: #ScrollPane
	instanceVariableNames: 'scrollBar scroller retractableScrollBar scrollBarOnLeft getMenuSelector getMenuTitleSelector hasFocus hScrollBar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Windows'!

!ScrollPane commentStamp: 'mk 8/9/2005 10:34' prior: 0!
The scroller (a transform) of a scrollPane is driven by the scrollBar.  The scroll values vary from 0.0, meaning zero offset to 1.0 meaning sufficient offset such that the bottom of the scrollable material appears 3/4 of the way down the pane.  The total distance to achieve this range is called the totalScrollRange.

Basic clue about utilization of the ScrollPane class is given in:
	ScrollPane example1.
	ScrollPane example2.!
