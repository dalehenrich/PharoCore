
!PluggableListMorph methodsFor: '*Polymorph-Widgets'!
selectionColorToUse
	"Answer the colour to use for selected items."

	^self valueOfProperty: #selectionColorToUse ifAbsent: [self theme settings selectionColor] ! !
