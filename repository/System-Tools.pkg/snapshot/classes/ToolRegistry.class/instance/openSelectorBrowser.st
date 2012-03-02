
!ToolRegistry methodsFor: 'menu'!
openSelectorBrowser
	self using: #selectorBrowser do: [:tool |
		tool new morphicWindow openInWorld
	]
! !
