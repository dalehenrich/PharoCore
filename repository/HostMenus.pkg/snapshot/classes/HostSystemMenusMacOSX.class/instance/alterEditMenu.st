
!HostSystemMenusMacOSX methodsFor: 'building-menus'!
alterEditMenu
	| editMenuID editMenu |
	editMenuID := 3.
	editMenu := OrderedCollection 
		with: (HostSystemMenusMenuItem menuString: 'Undo' keyboardKey: $z macKeyCode: 6)
		with: (HostSystemMenusMenuItem menuString: '_')
		with: (HostSystemMenusMenuItem menuString: 'Cut' keyboardKey: $x macKeyCode: 7)
		with: (HostSystemMenusMenuItem menuString: 'Copy' keyboardKey: $c macKeyCode: 8)
		with: (HostSystemMenusMenuItem menuString: 'Paste' keyboardKey: $v macKeyCode: 9)
		with: (HostSystemMenusMenuItem menuString: 'Clear').
	1 to: editMenu size do: 
		[:i | self setHandlerForMenu: editMenuID item: i  handler: (editMenu at: i)].
! !
