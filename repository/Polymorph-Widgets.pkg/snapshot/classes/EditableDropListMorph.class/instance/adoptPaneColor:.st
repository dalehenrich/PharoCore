
!EditableDropListMorph methodsFor: 'as yet unclassified'!
adoptPaneColor: paneColor
	"Clear the fill style of the text."
	
	super adoptPaneColor: paneColor.
	self contentMorph fillStyle: Color transparent ! !
