
!ToolRegistry methodsFor: 'menu'!
mainMenuItems
	"Answer the most important menu items available for this tool set"
	^#(
		('System Browser' 			#openClassBrowser)
		('Workspace'				#openWorkspace)
		('Test Runner'				#openTestRunner)
		('Monticello Browser'		#openMonticelloBrowser)
	)
! !
