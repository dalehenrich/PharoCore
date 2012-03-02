
!DropListMorph methodsFor: 'as yet unclassified'!
updateContents
	"Update the contents."

	self contentMorph
		contents: (self listSelectionIndex > 0
			ifTrue: [self listMorph wrapItem: (self list at: self listSelectionIndex) index: self listSelectionIndex ]
			ifFalse: [' ']) "needs something to keep font"! !
