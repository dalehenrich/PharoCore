
!PasteUpMorph methodsFor: '*morphic-windows'!
collapseAll
	"Collapse all windows"
	(self windowsSatisfying: [:w | w isCollapsed not])
		reverseDo: [:w | w collapseOrExpand.  self displayWorld].
	self collapseNonWindows! !
