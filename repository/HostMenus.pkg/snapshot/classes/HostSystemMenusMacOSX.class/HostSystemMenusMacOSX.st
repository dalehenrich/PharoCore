
HostSystemMenusProxy subclass: #HostSystemMenusMacOSX
	instanceVariableNames: 'menuBar menus'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HostMenus-Mac'!

!HostSystemMenusMacOSX commentStamp: 'JMM 10/15/2004 13:07' prior: 0!
Interface to the OS-9 classic menu bar macintosh plugin. 

Structure:
 isVMMenuBar	Boolean -- true if this menu bar was built by the VM
 menuBar		MenubarHandle -- The  magic number identifying the menubar
 menus			Dictionary -- Holds onto the definitions for each menu item in the menubar

Any further useful comments about the general approach of this implementation.
isVMMenuBar menuBar menus windowIndex !
