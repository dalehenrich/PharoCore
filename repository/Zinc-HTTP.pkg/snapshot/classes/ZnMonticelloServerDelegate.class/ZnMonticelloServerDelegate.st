
Object subclass: #ZnMonticelloServerDelegate
	instanceVariableNames: 'directory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Client-Server'!

!ZnMonticelloServerDelegate commentStamp: '<historical>' prior: 0!
I am ZnMonticelloServerDelegate.
I am a proof of concept implementation of a basic Monticello server.
I function as a delegate for ZnServer.

ZnServer startDefaultOn: 1701.
ZnServer default delegate: ((ZnMonticelloServerDelegate new) 
									directory: (FileDirectory on: '/Users/sven/Tmp/monticello'); 
									yourself).

Part of Zinc HTTP Components.!
