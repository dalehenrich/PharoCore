
!HostSystemMenusMacOSX methodsFor: 'utility'!
buildSubMenusFor: menu
	| items |
	
	items := OrderedCollection new. 
	menu items do: [:e |
		items add: (HostSystemMenusMenuItem menuString: (self modifySqueakMenu: e contents) 
				handler: [:evt | 
					e doButtonAction])].	
	^items	
! !
