
!Inspector methodsFor: 'menu commands'!
classOfSelection
	"Answer the class of the receiver's current selection"

	self selectionUnmodifiable ifTrue: [^ object class].
	^ self selection class! !
