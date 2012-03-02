
!ExpanderMorph methodsFor: 'as yet unclassified'!
initialize
	"Initialize the receiver."

	super initialize.
	self
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		titleMorph: self defaultTitleMorph! !
