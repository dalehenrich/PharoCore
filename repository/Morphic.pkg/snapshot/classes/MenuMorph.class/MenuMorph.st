
AlignmentMorph subclass: #MenuMorph
	instanceVariableNames: 'defaultTarget selectedItem stayUp popUpOwner activeSubMenu activatorDockingBar embeddable menuItems'
	classVariableNames: 'CloseBoxImage PushPinImage'
	poolDictionaries: ''
	category: 'Morphic-Menus'!

!MenuMorph commentStamp: '<historical>' prior: 0!
Instance variables:
	defaultTarget 	<Object>				The default target for creating menu items
	selectedItem		<MenuItemMorph> 	The currently selected item in the receiver
	stayUp 			<Boolean>			True if the receiver should stay up after clicks
	popUpOwner 	<MenuItemMorph>	The menu item that automatically invoked the receiver, if any.
	activeSubMenu 	<MenuMorph>		The currently active submenu.!
