
!PluggableButtonMorph methodsFor: '*Polymorph-Widgets'!
fillStyleToUse
	"Return the fillStyle to use for the receiver."
	
	^self perform: (self availableFillStyles at: (
			self interactionStates indexOf: self interactionState))
! !
