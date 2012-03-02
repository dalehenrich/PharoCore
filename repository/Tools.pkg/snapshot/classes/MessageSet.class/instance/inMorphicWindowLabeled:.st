
!MessageSet methodsFor: 'private'!
inMorphicWindowLabeled: labelString
	"Answer a morphic window with the given label that can display the receiver"

	^UIManager default messageSet: self inMorphicWindowLabeled: labelString! !
