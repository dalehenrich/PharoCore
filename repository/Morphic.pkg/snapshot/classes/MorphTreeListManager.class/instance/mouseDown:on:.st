
!MorphTreeListManager methodsFor: 'mouse managing'!
mouseDown: event on: aTargetMorph
	"Changed to take keybaord focus."

	| targetMorph |
	((self autoMultiSelection) and: [event shiftPressed not])
		ifTrue: [
			firstClickedMorph := aTargetMorph.
			lastClickedMorph := aTargetMorph.
			aTargetMorph selected
				ifTrue: [self removeFromSelection: aTargetMorph]
				ifFalse: [self addToSelection:  aTargetMorph]].
			
	(event shiftPressed not or: [firstClickedMorph isNil])
			ifTrue: [firstClickedMorph := aTargetMorph]


! !
