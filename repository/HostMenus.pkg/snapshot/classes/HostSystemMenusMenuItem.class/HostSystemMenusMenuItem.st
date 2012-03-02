
Object subclass: #HostSystemMenusMenuItem
	instanceVariableNames: 'icon mark style cmd disabled text handler shift'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HostMenus-Mac'!

!HostSystemMenusMenuItem commentStamp: 'JMM 10/22/2004 11:04' prior: 0!
Holds on to information about a menu item, this allows you to create and populate a menu item which is then handed to the HostSystemMenus classes to actually build the menu item. It does not refect the real-time state of the menu item since changes to the menu items via HostSystemMenus are not recorded. For example to understand the actual enabled/disabled state you must make an api call to host os to get the actual state, the same applies to all other attributes. After creation the only attribute used is the handler which points to the block to execute when a menu item is activated.

icon 		pointer to icon information
mark 		mark character (ascii value)
style 		pointer to style information
cmd 		command magic number
disabled 	true if disabled 
text 		text of the menu item
handler 	pointer to the block that gets executed when you invoke the menu item. 
!
