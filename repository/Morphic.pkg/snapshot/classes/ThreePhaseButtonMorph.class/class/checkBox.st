
!ThreePhaseButtonMorph class methodsFor: 'instance creation'!
checkBox
	"Answer a button pre-initialized with checkbox images."
	| f |
	^self new
		onImage: (f := self theme checkBoxOnIcon);
		pressedImage: (self theme checkBoxPressedIcon);
		offImage: (self theme checkBoxOffIcon);
		extent: f extent + (2@0);
		yourself
! !
