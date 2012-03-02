
!EditableDropListMorph methodsFor: 'as yet unclassified'!
updateContents
	"Update the contents."

	|sel|
	self contentMorph
		setText: (self listSelectionIndex > 0
			ifTrue: [sel := self list at: self listSelectionIndex.
					sel isText
						ifTrue: [sel]
						ifFalse: [sel asString]]
			ifFalse: ['']) "needs something to keep font"! !
