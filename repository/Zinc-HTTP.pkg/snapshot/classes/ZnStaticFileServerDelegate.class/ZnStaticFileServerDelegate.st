
Object subclass: #ZnStaticFileServerDelegate
	instanceVariableNames: 'prefix directory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Client-Server'!

!ZnStaticFileServerDelegate commentStamp: 'SvenVanCaekenberghe 4/26/2011 12:48' prior: 0!
I am ZnStaticFileServerDelegate.
I am a simple proof of concept implementation of a web server serving static files.
I handle urls with an optional prefix as requests for files in a directory.
I serve index.html or index.htm when a directory is requested and these files exist.
I do a redirect when a path that is not does not end with a / refers to directory.
I function as a delegate for ZnServer.

ZnServer startDefaultOn: 1701.
ZnServer default delegate: ((ZnStaticFileServerDelegate new) 
									prefixFromString: 'apple/macosx'; 
									directory: (FileDirectory on: '/Library/WebServer/Documents'); 
									yourself).

Part of Zinc HTTP Components.!
