
ZnServer subclass: #ZnSingleThreadedServer
	instanceVariableNames: 'port process serverSocket delegate authenticator log lastRequest lastResponse'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Zinc-HTTP-Client-Server'!

ZnSingleThreadedServer class
	instanceVariableNames: 'Default'!

!ZnSingleThreadedServer commentStamp: 'SvenVanCaekenberghe 12/15/2010 15:38' prior: 0!
I am ZnSingleThreadedServer.
I can be customized with a delegate (#handleRequest:) and an authenticator (#authenticateRequest:do:).

ZnSingleThreadedServer startDefaultOn: 1701.
ZnSingleThreadedServer default authenticator: (ZnBasicAuthenticator username: 'foo' password: 'secret').
ZnClient get: 'http://localhost:1701' username: 'foo' password: 'secret'.

I use ZnDefaultServerDelegate when no other delegate is set.
I am single threaded, I run in a single process.
I close connections after each request/response cycle.

Acknowledgement: basic design copied from Blackfoot.

Part of Zinc HTTP Components.!
