
!WindowAnnouncementTest methodsFor: 'window creation and deletion'!
testWindowCreation
	| t oldBounds newBounds |
	t := 0.
	World announcer on: WindowResizing do: [:ann | t := t + 1].
	window := SystemWindow labelled: 'foo'.
	window openInWorld.
	oldBounds := window bounds.
	window announcer on: WindowResizing do: [:ann | t := t + 1].
	self assert: (t = 0).
	window extent: 50@60.
	newBounds := window bounds.
	self assert: (t = 1).
! !
