
!WindowAnnouncementTest methodsFor: 'window creation and deletion'!
testWindowCreationAndDeletion
	
	| t newWindowCreated r |
	t := 0.
	World announcer on: WindowOpened do: [:ann | t := t + 1. newWindowCreated := ann window].
	World announcer on: WindowClosed do: [:ann | t := t + 10. newWindowCreated := ann window].
	window := SystemWindow labelled: 'foo'.
	window openInWorld.

	self assert: (t = 1).
	self assert: (window == newWindowCreated).
	window delete.

	self assert: (t = 11).
	self assert: (window == newWindowCreated).
! !
