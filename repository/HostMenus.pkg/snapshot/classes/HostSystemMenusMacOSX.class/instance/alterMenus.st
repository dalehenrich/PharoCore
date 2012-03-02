
!HostSystemMenusMacOSX methodsFor: 'building-menus'!
alterMenus
	| editMenu fileMenuID editMenuID fileMenu menuRef |

	self alterEditMenu.

	"self appendStandardWindowMenu: 0."
	self alterFileMenu.
	self alterAppMenu.
	self
		addToolsMenu;
		addWindowsMenu;
		addSystemMenu;
		addHelpMenu.! !
