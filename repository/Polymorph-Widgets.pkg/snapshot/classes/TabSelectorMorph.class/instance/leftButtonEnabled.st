
!TabSelectorMorph methodsFor: 'as yet unclassified'!
leftButtonEnabled
	"Answer whether the button for scrolling left should be enabled."

	^self wrapScrolling or: [self visibleTabRange first > 1]! !