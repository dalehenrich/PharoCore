
!HostSystemMenusMacOSX methodsFor: 'building-menus'!
alterAppMenu 
	| appMenu items menu menuRef |	

	menuRef := self findApplicationMenuViaHideMenuItem.
	self rebuildApplicationMenuHandlers: menuRef.
	self disableApplicationHide: menuRef.
	self enableApplicationQuit: menuRef.

	appMenu := self getMenuHandle: 1.
	items := self buildSubMenusFor: (World worldMenuAt: #System) items first subMenu.
	"items at: 3 put: (HostSystemMenusMenuItem subMenu: 201 menuString: 'Preferences...')."
	
	items add: (HostSystemMenusMenuItem menuString: '-');
		add: (HostSystemMenusMenuItem menuString: 'Save' 
				handler: [:evt | Smalltalk snapshot: true andQuit: false ]);
		add: (HostSystemMenusMenuItem menuString: 'Save As...' 
				handler: [:evt | Smalltalk saveAs]);
		add: (HostSystemMenusMenuItem menuString: 'Save and Quit' 
				handler: [:evt | Smalltalk snapshot: true andQuit: true]).
	self appendMenu: appMenu menuItems: items! !
