
!ThreePhaseButtonMorph class methodsFor: 'instance creation'!
radioButton
	"Answer a button pre-initialized with radiobutton images."
	| f |
	^self new
		onImage: (f := self theme radioButtonOnIcon);
		pressedImage: (self theme  radioButtonPressedIcon);
		offImage: (self theme radioButtonOffIcon);
		extent: f extent + (2@0);
		yourself
! !
