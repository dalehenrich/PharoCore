
!PluggableButtonMorph methodsFor: '*Polymorph-Widgets'!
adoptPaneColor: aColor

	super adoptPaneColor: aColor.
	aColor ifNil: [^self].
	self adoptColor: self colorToUse! !
