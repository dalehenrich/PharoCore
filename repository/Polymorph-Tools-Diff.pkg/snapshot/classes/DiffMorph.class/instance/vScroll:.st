
!DiffMorph methodsFor: 'as yet unclassified'!
vScroll: scrollValue
	"Called from standalone scroolbar.
	Scroll the srcMorph and redo the join."

	self srcMorph vScrollBarValue: scrollValue.
	self dstMorph vScrollBarValue: scrollValue.
	self updateJoinOffsets! !
