
!TasklistMorph methodsFor: 'as yet unclassified'!
initialize
	"Initialize the receiver."

	super initialize.
	self
		initializeTasks;
		initializeLayout;
		initializeAppearance;
		addMorphs;
		updateButtonsAndPreview;
		adoptPaneColor: self color! !
