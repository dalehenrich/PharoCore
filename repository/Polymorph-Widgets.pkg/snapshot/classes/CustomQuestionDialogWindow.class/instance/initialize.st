
!CustomQuestionDialogWindow methodsFor: 'as yet unclassified'!
initialize
	"Initialize the receiver."

	self
		yesButton: self defaultYesButton;
		noButton: self defaultNoButton;
		cancelButton: self defaultCancelButton.
	super initialize! !
