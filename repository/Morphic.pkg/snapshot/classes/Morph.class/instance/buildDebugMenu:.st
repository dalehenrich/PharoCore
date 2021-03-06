
!Morph methodsFor: 'debug and others'!
buildDebugMenu: aHand
	"Answer a debugging menu for the receiver. 
	 The hand argument is seemingly historical and plays no role presently"

	| aMenu |
	aMenu := UIManager default newMenuIn: self for: self.
	aMenu addStayUpItem.
	(self hasProperty: #errorOnDraw) ifTrue:
		[aMenu add: 'start drawing again' translated action: #resumeAfterDrawError.
		aMenu addLine].
	(self hasProperty: #errorOnStep) ifTrue:
		[aMenu add: 'start stepping again' translated action: #resumeAfterStepError.
		aMenu addLine].

	aMenu add: 'inspect morph' translated action: #inspectInMorphic:.
	aMenu lastItem icon: self theme smallInspectItIcon.
	aMenu add: 'inspect owner chain' translated action: #inspectOwnerChain.
	aMenu lastItem icon: self theme smallInspectItIcon.
	self isMorphicModel ifTrue:
		[aMenu add: 'inspect model' translated target: self model action: #inspect.
			aMenu lastItem icon: self theme smallInspectItIcon].
     aMenu add: 'explore morph' translated target: self selector: #explore.
	aMenu lastItem icon: self theme smallInspectItIcon.
	aMenu addLine.
	aMenu add: 'browse morph class' translated target: self selector: #browseHierarchy.
	(self isMorphicModel)
		ifTrue: [aMenu
				add: 'browse model class'
				target: self model
				selector: #browseHierarchy].
	aMenu add: 'explore view hierarchy' translated target: self selector: #exploreViewHierarchy.
	^ aMenu! !
