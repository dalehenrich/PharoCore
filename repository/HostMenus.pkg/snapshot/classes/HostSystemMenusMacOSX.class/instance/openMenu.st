
!HostSystemMenusMacOSX methodsFor: 'building-menus'!
openMenu
	"Build the open window menu for the world."

	| menu |
	menu := UIManager default
				 newMenuIn: self for: Smalltalk tools.
	menu addList: Smalltalk tools menuItems.
	^menu! !
