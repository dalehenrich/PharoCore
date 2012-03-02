
HostSystemMenusProxy subclass: #HostSystemMenusWindows
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HostMenus-Mac'!

!HostSystemMenusWindows commentStamp: 'LaurentLaffont 6/8/2011 22:22' prior: 0!
Me and the HostSystemMenusMacOSX are specializations of HostSystemMenusProxy.
We know how to answer to #isActiveHostMenuProxyClass, which is used by HostSystemMenus class>>activeMenuProxyClass to determine the active menu.  That's why I don't have direct references.

Read HostSystemMenusProxy for more info.!
