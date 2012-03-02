
Object subclass: #HostSystemMenusProxy
	instanceVariableNames: 'application'
	classVariableNames: 'Registry'
	poolDictionaries: ''
	category: 'HostMenus-Mac'!

!HostSystemMenusProxy commentStamp: 'JMM 10/22/2004 10:24' prior: 0!
Proxy for the host api menu structure. 
All calls are managed by subclasses which support the menu API.
What is implemented is the finalization logic to ensure GCed menus are disposed of if the user forgets to dispose of the menu before he 
forgets about the instance of this class. 

!
