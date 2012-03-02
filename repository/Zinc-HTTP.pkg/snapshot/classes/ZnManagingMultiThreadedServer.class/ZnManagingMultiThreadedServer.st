
ZnMultiThreadedServer subclass: #ZnManagingMultiThreadedServer
	instanceVariableNames: 'lock connections'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Client-Server'!

!ZnManagingMultiThreadedServer commentStamp: 'SvenVanCaekenberghe 9/6/2011 12:31' prior: 0!
ZnManagingMultiThreadedServer is a ZnMultiThreadedServer that manages the socket stream connections used by the worker threads that are spawned.

Create explicitely using:

	ZnManagingMultiThreadedServer startDefaultOn: 1701.
	ZnManagingMultiThreadedServer stopDefault.

Part of Zinc HTTP Components.!
