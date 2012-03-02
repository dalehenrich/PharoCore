
!MessageSet methodsFor: 'private'!
openAsMorphNamed: labelString inWorld: aWorld
	"Open the receiver in a morphic window in the given world"

	(self inMorphicWindowLabeled: labelString) openInWorld: aWorld.
	self messageListIndex: 1.
! !
