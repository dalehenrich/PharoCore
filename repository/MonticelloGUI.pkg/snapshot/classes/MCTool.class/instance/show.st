
!MCTool methodsFor: 'as yet unclassified '!
show
	"Open the tool returning the window."

	modal := false.
	self window openInWorldExtent: self defaultExtent.
	self setDefaultFocus.
	^ self window! !
