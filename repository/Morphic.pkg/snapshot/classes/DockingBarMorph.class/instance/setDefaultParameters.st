
!DockingBarMorph methodsFor: 'initialization'!
setDefaultParameters
	"private - set the default parameter using the current theme settings as the inspiration source"
	self
		color: self theme settings derivedMenuColor;
		borderWidth: self theme settings menuBorderWidth;
		borderColor: self theme settings menuBorderColor! !
